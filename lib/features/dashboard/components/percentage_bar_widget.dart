import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';

class PercentageBarWidget extends StatelessWidget {
  const PercentageBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: 25,
              decoration: BoxDecoration(
                color: appColors.deepPurple500,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Container(
                height: 25,
                margin: const EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                  color: appColors.pink300,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.7,
              child: Container(
                height: 25,
                margin: const EdgeInsets.only(right: 60),
                decoration: BoxDecoration(
                  color: appColors.blueIconColor,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 30,
          top: 3,
          child: Text(
            "5%",
            style: AppStyle.text12PoppinsRegularWhite,
          ),
        ),
        Positioned(
          right: 150,
          top: 3,
          child: Text(
            "40%",
            style: AppStyle.text12PoppinsRegularWhite,
          ),
        ),
        Positioned(
          left: 30,
          top: 3,
          child: Text(
            "55%",
            style: AppStyle.text12PoppinsRegularWhite,
          ),
        ),
      ],
    );
  }
}
