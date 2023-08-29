import 'package:admin/core/animations/fade_transitioned_widget.dart';
import 'package:admin/controllers/menu_app_controller.dart';
import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/core/helpers/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'side_menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final NavigationController navigationController =
      Get.find<NavigationController>();

  final MenuAppController menuController = Get.put(MenuAppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: menuController.scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: GetBuilder<NavigationController>(
            init: navigationController,
            builder: (controller) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // We want this side menu only for large screen
                  if (Responsive.isDesktop(context))
                    Expanded(
                      // default flex = 1
                      // and it takes 1/6 part of the screen
                      child: SideMenu(),
                    ),
                  Expanded(
                    // It takes 5/6 part of the screen
                    flex: 5,
                    child: FadeTransitionedWidget(
                      child: controller.reactiveWidget,
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
