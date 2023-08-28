import 'package:admin/core/extensions/extension.dart';
import 'package:admin/core/models/config.dart';
import 'package:admin/core/models/userModel.dart';
import 'package:admin/core/theme/app_colors.dart';
import 'package:admin/services/auth_services.dart';
import 'package:admin/services/firestoreServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User?> user = Rx<User?>(null);

  bool loginCredential = false;

  @override
  void onInit() {
    super.onInit();
    _checkCurrentUser();
  }

  void _checkCurrentUser() {
    _auth.authStateChanges().listen((User? currentUser) {
      user.value = currentUser;
    });
  }

  // Logout function
  Future<void> logout() async {
    try {
      await _auth.signOut();
      Get.toNamed("/");
    } catch (e) {
      ("Error during logout: $e").log();
    }
  }

  loginUser({
    required String email,
    required String password,
  }) async {
    EasyLoading.show();

    String str = await Get.find<AuthServices>().emailSignIn(email, password);

    "the Sign in result is: $str".log();

    if (str == "") {
      currentUser =
          await Get.put(FirestoreServices()).getUser(currentUser.id) ??
              UserModel();
      await Get.find<FirestoreServices>().updateUser(currentUser);
      loginCredential = false;
      update();
      EasyLoading.dismiss();
      Get.offNamed('/main');
      Get.snackbar(
        "Success",
        "You have Signed In Successfully",
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    } else {
      EasyLoading.dismiss();
      loginCredential = true;
      update();
      newMethod();
    }
  }

  void newMethod() {
    Get.snackbar(
      "Error",
      "Error Signing in, please check your credentials and try again",
      colorText: Colors.white,
      backgroundColor: Colors.red,
    );
  }
}
