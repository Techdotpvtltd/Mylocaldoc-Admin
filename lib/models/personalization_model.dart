import 'package:cloud_firestore/cloud_firestore.dart';

class PersonalizationModel {
  String? id;
  String? value;

  PersonalizationModel({this.id, this.value});

  PersonalizationModel.fromDocumentSnapshot(
      QueryDocumentSnapshot<Object?> doc) {
    id = doc.id;
    value = doc['value'];
  }
}
