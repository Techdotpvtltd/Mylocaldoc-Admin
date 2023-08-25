import 'package:admin/animations/fade_transitioned_widget.dart';
import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/core/controllers/MenuAppController.dart';
import 'package:admin/core/theme/theme_helper.dart';
import 'package:admin/features/promotions/promotions_view.dart';
import 'package:admin/features/free_coffees/free_coffees_view.dart';
import 'package:admin/features/dashboard/dashboard_screen.dart';
import 'package:admin/features/personalization/personalization_view.dart';
import 'package:admin/features/contact_us_entries/contact_us_entries_view.dart';
import 'package:admin/features/chm/chm_view.dart';
import 'package:admin/features/users/users_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'side_menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final NavigationController navigationController =
      Get.find<NavigationController>();

  final List<Widget> dashboardViewsList = [
    const DashboardScreen(),
    const UsersView(),
    const PersonalizationsView(),
    const PromotionsView(),
    const FreeCoffeesView(),
    const CHMView(),
    const ContactUsEntriesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        ),
      ],
      child: Scaffold(
        backgroundColor: appColors.black900,
        key: context.read<MenuAppController>().scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We want this side menu only for large screen
              // if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: FadeTransitionedWidget(
                  child: Obx(
                    () => dashboardViewsList[
                        navigationController.viewIndex.value],
                  ),
                ),

                //   //DashboardScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
