// ignore_for_file: depend_on_referenced_packages

import 'package:admin/app.dart';
import 'package:admin/controllers/authController.dart';
import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/controllers/theme_controller.dart';
import 'package:admin/services/auth_services.dart';
import 'package:admin/services/firestoreServices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Import the generated file
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUrlStrategy(PathUrlStrategy());

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  Get.put<SharedPreferences>(prefs);
  Get.put<ThemeController>(ThemeController()).initTheme();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  Get.put(AuthController());
  Get.put(NavigationController());
  Get.put(FirestoreServices());
  Get.put(AuthServices());
  await Get.find<AuthServices>().checkUser();

  runApp(MyApp());
}
