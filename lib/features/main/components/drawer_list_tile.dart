import 'package:admin/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    required this.isSelected,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          color: isSelected ? theme.colorScheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSrc,
          colorFilter: ColorFilter.mode(
            isSelected ? appColors.whiteA700 : appColors.blueGray300,
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
            color: isSelected ? appColors.whiteA700 : appColors.blueGray300,
          ),
        ),
      ),
    );
  }
}
