import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';

class DashboardSubMenuTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;

  const DashboardSubMenuTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 3.0,
              color: isSelected ? appColors.purple400 : Colors.transparent,
            ),
          ),
        ),
        child: Text(
          text,
          style: theme.textTheme.displaySmall!.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w300,
            fontFamily: 'Lato',
            color: isSelected ? appColors.whiteA700 : appColors.blueGray300,
          ),
        ),
      ),
    );
  }
}
