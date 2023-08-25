import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:admin/core/theme/theme_helper.dart';

class RoundedGreyWidget extends StatelessWidget {
  final String icon;
  final double size;

  const RoundedGreyWidget({
    super.key,
    required this.icon,
    this.size = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: appColors.black333333,
        borderRadius: BorderRadius.circular(size / 2),
      ),
      child: Center(
        child: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          width: size * 0.6,
        ),
      ),
    );
  }
}
