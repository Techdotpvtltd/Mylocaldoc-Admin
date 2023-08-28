import 'package:admin/features/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxString title = "Dashboard".obs;
  RxInt viewIndex = 0.obs;
  Widget reactiveWidget = const DashboardScreen();

  void updatePanelView(Widget widget) {
    reactiveWidget = widget;
    update();
  }
}
