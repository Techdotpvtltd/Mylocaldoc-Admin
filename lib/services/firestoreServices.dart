import 'package:admin/core/models/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:admin/core/models/config.dart';
import 'api/firestoreApi.dart';

class FirestoreServices {
  final FirestoreApi _instance = FirestoreApi();
  final FirestoreApi instance1 = FirestoreApi();

  FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
  getFcm(String userId) async {
    DocumentSnapshot<Map<String, dynamic>> temp = await FirebaseFirestore
        .instance
        .collection('userProfile')
        .doc(userId)
        .get();
    try {
      return temp['fcm'] ?? "";
    } catch (_) {
      return "";
    }
  }

  registerUser() async {
    await _instance.postANode(
        path: 'userProfile/${currentUser.id}', data: currentUser.toJSON());
  }

  updateUser(UserModel user) async {
    await _instance.updateANode(
        path: 'userProfile/${user.id}', data: user.toJSON());
  }

  getUser(String uId) async {
    MyResponse response = await _instance.fetchANode(path: 'userProfile/$uId');
    if (response.success) {
      return UserModel.toModel(response.data);
    }
    return null;
  }

  List<String> generateArray(String name, [bool subSearch = false]) {
    name = name.toLowerCase();
    List<String> list = [];
    for (int i = 0; i < name.length; i++) {
      list.add(name.substring(0, i + 1));
    }
    if (subSearch) {
      for (String test in name.split(' ')) {
        for (int i = 0; i < test.length; i++) {
          list.add(test.substring(0, i + 1));
        }
      }
    }
    return list;
  }
}
