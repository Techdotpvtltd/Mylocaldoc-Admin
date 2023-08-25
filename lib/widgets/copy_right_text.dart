import 'package:admin/core/theme/theme_helper.dart';
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
        style: theme.textTheme.titleSmall!.copyWith(
          color: appColors.blueGray300,
        ),
      ),
    );
  }
}
