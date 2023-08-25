// ignore_for_file: depend_on_referenced_packages

import 'package:admin/services/auth_services.dart';
import 'package:admin/services/firestoreServices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:admin/app.dart';
import 'package:admin/core/theme/theme_helper.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

// Import the generated file
import 'firebase_options.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  //init
  await onInit();
  // setup Color and style theme
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

onInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // EasyLoading.instance
  //   ..displayDuration = const Duration(milliseconds: 2000)
  //   ..indicatorSize = 50
  //   ..textColor = Colors.black
  //   ..radius = 20
  //   ..backgroundColor = Colors.green
  //   ..maskColor = Colors.white
  //   ..indicatorColor = Colors.black
  //   ..dismissOnTap = false
  //   ..indicatorType = EasyLoadingIndicatorType.cubeGrid;
  Get.put(AuthServices());
  Get.put(FirestoreServices());

  await Get.find<AuthServices>().checkUser();

  // if (currentUser.id != "") {
  //   currentUser =
  //       (await Get.find<FirestoreServices>().getUser(currentUser.id)) ??
  //           UserModel();
  // if (currentUser.fcm == "") {
  //   Get.find<NotificationServices>().getToken().then((token) {
  //     if (token != "") {
  //       currentUser.fcm = token;
  //       FirestoreServices().updateUser(currentUser);
  //     }
  // });
  // }
  //}
}
