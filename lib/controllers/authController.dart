import 'dart:io';
import 'package:admin/core/config/extensions.dart';
import 'package:admin/core/theme/theme_helper.dart';
import 'package:admin/features/main/main_screen.dart';
import 'package:admin/services/auth_services.dart';
import 'package:admin/services/firestoreServices.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:admin/core/models/config.dart';
import 'package:admin/core/models/userModel.dart';
import 'package:get/get.dart';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class AuthController extends GetxController {
  //

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User?> user = Rx<User?>(null);

  //
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController userName = TextEditingController();
  bool shouldCheck = false;
  bool userName1 = false;
  bool userName2 = false;
  TextEditingController bio = TextEditingController();
  bool checks = false;
  bool loginCredential = false;
  bool obscureText = true;
  bool emailEmpty = false;
  bool notEmail = false;
  bool emailUsed = false;
  bool wrongPass = false;
  bool check = false;
  TextEditingController fullName = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  // final FirestoreServices _store = Get.find<FirestoreServices>();

  File? profileImage;
  File? cv;
  File? document;

  PageController controller = PageController(initialPage: 0);
  PageController controller1 = PageController(initialPage: 0);
  TextEditingController dob = TextEditingController();

  File? proImage;
  XFile? file;

  @override
  void onInit() {
    super.onInit();
    // Initialize variables or perform setup.

    _checkCurrentUser();

    // email.text = "javeedishaq88@gmail.com";
    // password.text = "#123@Dev";
    // confirmPassword.text = "#123@Dev";
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

  // ============

  getGalleryImages() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      proImage = File(image.path);
      crop();
      update();
    }
  }

  crop() async {
    File temp = File(proImage!.path);
    CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: temp.path,
        aspectRatioPresets: [],
        aspectRatio: const CropAspectRatio(ratioX: 4, ratioY: 4),
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Crop Image', hideBottomControls: true),
          IOSUiSettings(title: 'Crop Image', resetAspectRatioEnabled: true)
        ]);
    if (croppedFile != null) {
      proImage = File(croppedFile.path);
      update();
    }
  }

  TextEditingController name = TextEditingController();

  FilePickerResult? result;

  bool partner = false;
  bool focus = false;

  checkEmailVerification() async {
    try {
      await FirebaseAuth.instance.currentUser!.reload();
      return FirebaseAuth.instance.currentUser!.emailVerified;
    } catch (e) {
      return false;
    }
  }

  sendEmailVerification() async {
    try {
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
      return true;
    } catch (e) {
      return false;
    }
  }

  updateUser() async {
    await Get.find<FirestoreServices>().updateUser(currentUser);
  }

  changeEmail() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }
    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    String message = await Get.find<AuthServices>().changeEmail(email.text);
    if (message == "") {
      currentUser.email = email.text;
      await Get.find<FirestoreServices>().registerUser();
      Get.back();
    } else {
      EasyLoading.showInfo(message);
    }
  }

  checkIfUserIsLoggedIn() {}

  loginUser() async {
    EasyLoading.show();

    String str =
        await Get.find<AuthServices>().emailSignIn(email.text, password.text);

    "the Sign in result is: $str".log();

    if (str == "") {
      currentUser =
          await Get.put(FirestoreServices()).getUser(currentUser.id) ??
              UserModel();
      //currentUser.fcm = await Get.find<NotificationServices>().getToken();
      await Get.find<FirestoreServices>().updateUser(currentUser);
      loginCredential = false;
      update();
      EasyLoading.dismiss();
      Get.offNamed('/main');
      Get.snackbar(
        "Success",
        "You have Signed In Successfully",
        colorText: Colors.white,
        backgroundColor: theme.colorScheme.primary,
      );
    } else {
      EasyLoading.dismiss();
      loginCredential = true;
      update();
      Get.snackbar(
        "Error",
        "Error Signing in, please check your credentials and try again",
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }
  }

  forgetPassword() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }
    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    EasyLoading.show();
    String str = await Get.find<AuthServices>().forgetPassword(email.text);
    if (str == "") {
      EasyLoading.dismiss();
      EasyLoading.showInfo('Go Check Your Email');
      Get.back();
    } else {
      EasyLoading.showError(str);
    }
  }

  registerUser() async {
    // Get.offAll(const FindYourLocalDocView());
    return currentUser.email = email.text;
    // currentUser.initialPassword = password.text;
    // EasyLoading.show();
    // String str = await Get.find<AuthServices>().emailSignUp();
    // EasyLoading.dismiss();
    // if (str == "") {
    //   await Get.find<FirestoreServices>().registerUser();
    //   // currentUser.fcm = await Get.find<NotificationServices>().getToken();
    //   // await Get.find<FirestoreServices>().updateUser(currentUser);
    //   Get.offAll(const FindYourLocalDocView());
    //   return true;
    // } else {
    //   EasyLoading.showError(str);
    // }
    // return false;
  }
}
