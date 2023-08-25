import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    required this.navIdex,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final int navIdex;

  final NavigationController navigationController =
      Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
            color: navigationController.viewIndex.value == navIdex
                ? theme.colorScheme.primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          onTap: press,
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            svgSrc,
            colorFilter: ColorFilter.mode(
              navigationController.viewIndex.value == navIdex
                  ? appColors.whiteA700
                  : appColors.blueGray300,
              BlendMode.srcIn,
            ),
            height: 24,
          ),
          title: Text(
            title,
            style: theme.textTheme.bodyMedium!.copyWith(
              fontSize: 16,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              color: navigationController.viewIndex.value == navIdex
                  ? appColors.whiteA700
                  : appColors.blueGray300,
            ),
          ),
        ),
      ),
    );
  }
}
