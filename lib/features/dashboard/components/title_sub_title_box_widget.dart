import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';

class TitleSubTitleBoxWidget extends StatelessWidget {
  const TitleSubTitleBoxWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.only(top: 15, right: 10),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Text(
                title,
                style: AppStyle.text32PoppinsRegularWhite,
              ),
              Text(
                subTitle,
                style: AppStyle.text13PoppinsSemiBoldPink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
