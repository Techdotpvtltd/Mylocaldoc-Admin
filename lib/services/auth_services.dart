import 'dart:math';
import 'package:admin/features/signin/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:admin/core/models/config.dart';
import 'package:admin/core/models/userModel.dart';
import 'package:get/get.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  emailSignIn(String email, password) async {
    try {
      UserCredential fbUser = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (fbUser.user != null) {
        currentUser.id = fbUser.user?.uid ?? "";
        return "";
      }
      return "error";
    } on FirebaseAuthException catch (error) {
      FirebaseAuth.instance.signOut();
      return error.message ?? error.code;
    }
  }

  checkUser() async {
    try {
      currentUser.id = _auth.currentUser?.uid ?? "";
    } on FirebaseAuthException {
      currentUser.id = "";
    }
  }

  emailSignUp() async {
    try {
      UserCredential fbUser = await _auth.createUserWithEmailAndPassword(
          email: currentUser.email, password: currentUser.initialPassword);
      if (fbUser.user != null) {
        currentUser.id = fbUser.user!.uid;
        currentUser.loginType = "email";
        return "";
      }
      return "error";
    } on FirebaseAuthException catch (error) {
      return error.code;
    }
  }

  changeEmail(String newEmail) async {
    try {
      EasyLoading.show();
      await FirebaseAuth.instance.currentUser!.updateEmail(newEmail);
      await sendEmailVarification();
      EasyLoading.dismiss();
      return "";
    } on FirebaseAuthException catch (error) {
      print(error.message ?? error.code);
      return (error.message ?? error.code);
    }
  }

  checkEmailVarification() async {
    try {
      await FirebaseAuth.instance.currentUser!.reload();
      return FirebaseAuth.instance.currentUser!.emailVerified;
    } catch (e) {
      return false;
    }
  }

  sendEmailVarification() async {
    try {
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
      print("Check your Email");
      return true;
    } catch (e) {
      return false;
    }
  }

  forgetPassword(String mail) async {
    try {
      await _auth.sendPasswordResetEmail(email: mail);
      return "";
    } on FirebaseAuthException catch (error) {
      return error.message ?? error.code;
    }
  }

  logOut() async {
    await _auth.signOut();
    currentUser = UserModel();
    Get.off(const SignInScreen());
    try {
      Get.off(const SignInScreen());
    } catch (e) {
      print(e);
    }
    try {
      Get.off(const SignInScreen());
    } catch (e) {
      print(e);
    }
    try {
      // await Get.find<LocalServices>().clear();
    } catch (e) {
      print(e);
    }
  }

  String generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  // String sha256ofString(String input) {
  //   final bytes = utf8.encode(input);
  //   final digest = sha256.convert(bytes);
  //   return digest.toString();
  // }
}
