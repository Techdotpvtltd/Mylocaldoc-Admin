
// import 'dart:io';

// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';

// class FireStorageServices {
//   FirebaseStorage storage = FirebaseStorage.instance;

//   uploadDoc(String folder, File image) async {
//     String link = "";
//     try {
//       EasyLoading.show();
//       Reference ref =
//           storage.ref().child("$folder/${DateTime.now().toString()}");
//       UploadTask uploadTask = ref.putData(
//         await image.readAsBytes(),
//         SettableMetadata(contentType: 'document/pdf'),
//       );
//       var res = uploadTask;
//       link = await res.ref.getDownloadURL();
//       EasyLoading.dismiss();
//     } catch (_) {
//       print(_.toString());
//       EasyLoading.showError(_.toString());
//     }
//     return link;
//   }

//   uploadPic(String folder, File image) async {
//     String link = "";
//     try {
//       if (image.path == "") return link;
//       EasyLoading.show();
//       Reference ref =
//           storage.ref().child("$folder/${DateTime.now().toString()}");
//       UploadTask uploadTask = ref.putData(
//         await image.readAsBytes(),
//         SettableMetadata(contentType: 'image/jpeg'),
//       );
//       var res = uploadTask;
//       link = await res.ref.getDownloadURL();
//       EasyLoading.dismiss();
//     } catch (_) {
//       log(_.toString());
//       EasyLoading.showError(_.toString());
//     }
//     return link;
//   }

//   Future<String> uploadFile(String folder, File image) async {
//     String link = "";
//     try {
//       EasyLoading.show();
//       Reference ref =
//           storage.ref().child("$folder/${DateTime.now().toString()}");
//       UploadTask uploadTask = ref.putData(await image.readAsBytes());
//       var res = uploadTask;
//       link = await res.ref.getDownloadURL();
//       EasyLoading.dismiss();
//     } catch (_) {
//       log(_.toString());
//       EasyLoading.showError(_.toString());
//     }
//     return link;
//   }

//   Future<bool> deletePic(String url) async {
//     try {
//       EasyLoading.show();
//       await FirebaseStorage.instance.refFromURL(url).delete();
//       EasyLoading.dismiss();
//       return true;
//     } catch (e) {
//       EasyLoading.showError("Error deleting db from cloud: $e");
//       return false;
//     }
//   }
// }
