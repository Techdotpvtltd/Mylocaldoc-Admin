import 'package:admin/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        color: AppColors.black900,
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
