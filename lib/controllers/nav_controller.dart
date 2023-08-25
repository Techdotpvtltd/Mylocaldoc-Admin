// import 'package:cargorent/mainScreens/hoemScreen.dart';
import 'package:admin/features/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavControllerPR extends GetxController {
  int currentTab = 1;
  int currentIndex = 1;
  Widget currentScreen = const MainScreen();
  bool isVisible = true;
}
