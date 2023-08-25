import 'package:admin/exports/app_exports.dart';
import 'package:admin/exports/common_exports.dart';
import 'package:flutter/material.dart';

class NotificationsIconWidget extends StatelessWidget {
  final int notificationsCount;

  const NotificationsIconWidget({
    super.key,
    required this.notificationsCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 50,
      child: Center(
        child: Stack(
          children: [
            const Positioned(
              top: 7,
              left: 0,
              child: RoundedGreyWidget(
                icon: LocalImages.bellIcon,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: appColors.redFF754C,
                  borderRadius: BorderRadius.circular(20 / 2),
                ),
                child: Center(
                  child: Text(
                    "$notificationsCount",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
