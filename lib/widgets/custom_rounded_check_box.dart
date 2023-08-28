import 'package:admin/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRoundedCheckBox extends StatelessWidget {
  const CustomRoundedCheckBox({
    super.key,
    required this.isChecked,
    required this.onTap,
  });

  final bool isChecked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: isChecked
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            border: Border.all(color: AppColors.whiteA700)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: isChecked
              ? const Center(
                  child: Icon(
                    Icons.check,
                    size: 16.0,
                    color: Colors.white,
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
