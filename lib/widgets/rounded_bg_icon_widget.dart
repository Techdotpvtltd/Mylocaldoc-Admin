import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedBgIconWidget extends StatelessWidget {
  const RoundedBgIconWidget({
    super.key,
    required this.iconColor,
    required this.iconPath,
  });

  final Color iconColor;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 0.75),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      ),
    );
  }
}
