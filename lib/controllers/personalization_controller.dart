import 'package:admin/core/helpers/helper_functions.dart';
import 'package:admin/models/personalization_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class PersonalizationController extends GetxController {

  RxList<PersonalizationModel> personalizations = <PersonalizationModel>[].obs;

  final personalizationsCollection =
      FirebaseFirestore.instance.collection('personalizations');

  @override
  onInit() {
    super.onInit();
    getAllPersonalizations();
  }

  Future savePersonalizeItem(String personalizationText) async {
    EasyLoading.show();

    try {
      final docId =
          HelperFunctions.removeSpecialCharacters(personalizationText);

      await FirebaseFirestore.instance
          .collection('personalizations')
          .doc(docId)
          .set({'id': docId, 'value': personalizationText});

      EasyLoading.dismiss();
    } on Exception catch (e) {
      EasyLoading.show(status: e.toString());
    }
  }

  getAllPersonalizations() async {
    personalizations
        .bindStream(personalizationsCollection.snapshots().map((query) {
      List<PersonalizationModel> personalizationsList = [];
      List<QueryDocumentSnapshot<Object?>> docsList = query.docs;

      for (var element in docsList) {
        personalizationsList
            .add(PersonalizationModel.fromDocumentSnapshot(element));
      }

      return personalizationsList;
    }));
  }

  Future editPersonalizeItem(
      String docId, String newPersonalizationText) async {
    EasyLoading.show();

    try {
      await personalizationsCollection.doc(docId).update({
        'value': newPersonalizationText,
      });

      EasyLoading.dismiss();
    } on Exception catch (e) {
      EasyLoading.show(status: e.toString());
    }
  }

  Future showDeleteConfirmationDialog() async {
    return await Get.defaultDialog(
      title: 'Delete Item',
      middleText: 'Are you sure you want to delete this item?',
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back(result: false); // Cancel
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back(result: true); // Confirm
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text('Delete'),
        ),
      ],
    );
  }

  Future deletePersonalizeItem(String docId) async {
    bool confirmDelete = await showDeleteConfirmationDialog();
    if (confirmDelete) {
      EasyLoading.show();

      try {
        await personalizationsCollection.doc(docId).delete();

        EasyLoading.dismiss();
      } on Exception catch (e) {
        EasyLoading.show(status: e.toString());
      }
    }
  }
}
