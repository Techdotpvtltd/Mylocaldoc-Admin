import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/core/theme/theme_helper.dart';
import 'package:admin/core/values/local_images.dart';
import 'package:admin/features/promotions/promotions_view.dart';
import 'package:admin/features/free_coffees/free_coffees_view.dart';
import 'package:admin/features/dashboard/dashboard_screen.dart';
import 'package:admin/features/personalization/personalization_view.dart';
import 'package:admin/features/main/components/drawer_list_tile.dart';
import 'package:admin/features/contact_us_entries/contact_us_entries_view.dart';
import 'package:admin/features/chm/chm_view.dart';
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
      backgroundColor: const Color(0xFF2A2D3E),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          right: BorderSide(
            color: theme.colorScheme.primary,
            width: 3.0,
          ),
        )),
        child: GetBuilder<NavigationController>(
            init: NavigationController(),
            initState: (_) {},
            builder: (context) {
              return Column(
                children: [
                  DrawerHeader(
                    child: Image.asset("assets/images/appLogo.png"),
                  ),
                  DrawerListTile(
                    title: "Dashboard",
                    svgSrc: LocalImages.imgIconDashboard,
                    navIdex: 0,
                    press: () {
                      navigationController.updatePanelView(index: 0);
                    },
                  ),
                  DrawerListTile(
                    title: "Users",
                    svgSrc: LocalImages.imgUsers,
                    navIdex: 1,
                    press: () {
                      navigationController.updatePanelView(index: 1);
                    },
                  ),
                  DrawerListTile(
                    title: "Personalization",
                    svgSrc: LocalImages.iconEvents,
                    navIdex: 2,
                    press: () {
                      navigationController.updatePanelView(index: 2);
                    },
                  ),
                  DrawerListTile(
                    title: "Promotions",
                    svgSrc: LocalImages.iconBooking,
                    navIdex: 3,
                    press: () {
                      navigationController.updatePanelView(index: 3);
                    },
                  ),
                  DrawerListTile(
                    title: "Free Coffees",
                    svgSrc: LocalImages.imgCalendarWhite,
                    navIdex: 4,
                    press: () {
                      navigationController.updatePanelView(index: 4);
                    },
                  ),
                  DrawerListTile(
                    title: "CHM",
                    svgSrc: LocalImages.imgLockWhiteA700,
                    navIdex: 5,
                    press: () {
                      navigationController.updatePanelView(index: 5);
                    },
                  ),
                  DrawerListTile(
                    title: "Contact Us",
                    svgSrc: LocalImages.iconPayments,
                    navIdex: 6,
                    press: () {
                      navigationController.updatePanelView(index: 6);
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
                            style: theme.textTheme.titleSmall!
                                .copyWith(fontFamily: 'Lato'),
                          ),
                          Text(
                            "Admin",
                            style: theme.textTheme.titleSmall!.copyWith(
                              color: appColors.pink300,
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
      ),
    );
  }
}
