import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/core/theme/app_colors.dart';
import 'package:admin/core/values/local_images.dart';
import 'package:admin/features/our_locals/our_locals_view.dart';
import 'package:admin/features/contact_us_entries/contact_us_entries_view.dart';
import 'package:admin/features/dashboard/dashboard_screen.dart';
import 'package:admin/features/free_coffees/free_coffees_view.dart';
import 'package:admin/features/main/components/drawer_list_tile.dart';
import 'package:admin/features/personalization/personalization_view.dart';
import 'package:admin/features/promotions/promotions_view.dart';
import 'package:admin/features/users/users_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);

  final NavigationController navigationController =
      Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GetBuilder<NavigationController>(
          init: NavigationController(),
          builder: (ctrl) {
            return Column(
              children: [
                DrawerHeader(
                  child: Image.asset("assets/images/appLogo.png"),
                ),
                DrawerListTile(
                  title: "Dashboard",
                  svgSrc: LocalImages.imgIconDashboard,
                  isActive: ctrl.reactiveWidget is DashboardScreen,
                  press: () {
                    navigationController
                        .updatePanelView(const DashboardScreen());
                  },
                ),
                DrawerListTile(
                  title: "Users",
                  svgSrc: LocalImages.imgUsers,
                  isActive: ctrl.reactiveWidget is UsersView,
                  press: () {
                    navigationController.updatePanelView(const UsersView());
                  },
                ),
                DrawerListTile(
                  title: "Personalization",
                  svgSrc: LocalImages.iconEvents,
                  isActive: ctrl.reactiveWidget is PersonalizationsView,
                  press: () {
                    navigationController
                        .updatePanelView( PersonalizationsView());
                  },
                ),
                DrawerListTile(
                  title: "Promotions",
                  svgSrc: LocalImages.iconBooking,
                  isActive: ctrl.reactiveWidget is PromotionsView,
                  press: () {
                    navigationController
                        .updatePanelView(const PromotionsView());
                  },
                ),
                DrawerListTile(
                  title: "Our Locals",
                  svgSrc: LocalImages.imgLockWhiteA700,
                  isActive: ctrl.reactiveWidget is OurLocalsView,
                  press: () {
                    navigationController.updatePanelView(const OurLocalsView());
                  },
                ),
                DrawerListTile(
                  title: "Free Coffees",
                  svgSrc: LocalImages.imgCalendarWhite,
                  isActive: ctrl.reactiveWidget is FreeCoffeesView,
                  press: () {
                    navigationController
                        .updatePanelView(const FreeCoffeesView());
                  },
                ),
                DrawerListTile(
                  title: "Contact Us",
                  svgSrc: LocalImages.iconPayments,
                  isActive: ctrl.reactiveWidget is ContactUsEntriesView,
                  press: () {
                    navigationController
                        .updatePanelView(const ContactUsEntriesView());
                  },
                ),
                const Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        LocalImages.profileImage,
                        height: 40,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jane Eyre",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "Admin",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.pink300,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            );
          }),
    );
  }
}
