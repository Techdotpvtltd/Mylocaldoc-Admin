import 'package:admin/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CopyRightText extends StatelessWidget {
  const CopyRightText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 30,
      child: Text(
        "© ${DateTime.now().year}.All rights reserved.",
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: AppColors.blueGray300,
            ),
      ),
    );
  }
}
