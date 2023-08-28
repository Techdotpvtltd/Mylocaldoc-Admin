import 'package:admin/controllers/nav_controller.dart';
import 'package:admin/core/theme/app_colors.dart';
import 'package:admin/core/utils/style_utils.dart';
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
    required this.isActive,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final bool isActive;

  final NavigationController navigationController =
      Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
        init: NavigationController(),
        builder: (ctrl) {
          return Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(vertical: 0),
            decoration:
                isActive ? sideNaveActiveBoxDecoration : const BoxDecoration(),
            child: ListTile(
              onTap: press,
              horizontalTitleGap: 0.0,
              leading: SvgPicture.asset(
                svgSrc,
                colorFilter: ColorFilter.mode(
                  isActive ? AppColors.whiteA700 : AppColors.blueGray300,
                  BlendMode.srcIn,
                ),
                height: 24,
              ),
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: isActive
                          ? AppColors.whiteA700
                          : AppColors.blueGray300,
                    ),
              ),
            ),
          );
        });
  }
}
