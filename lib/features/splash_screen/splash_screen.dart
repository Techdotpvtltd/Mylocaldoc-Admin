import 'dart:async';

import 'package:admin/controllers/authController.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final AuthController authController = Get.find<AuthController>();

  void navigateToPageAfterDelay(String routeName) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                LocalImages.appLogo,
              ),
              Obx(() {
                if (authController.user.value == null) {
                  // User is not logged in, navigate to the login page
                  navigateToPageAfterDelay('/login');
                } else {
                  // User is logged in, navigate to the home page
                  navigateToPageAfterDelay('/main');
                }
                return Container(); // Return an empty container for now
              }),
            ],
          ),
        ),
      ),
    );
  }
}
