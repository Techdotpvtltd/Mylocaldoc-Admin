import 'package:admin/core/models/stats_info_model.dart';
import 'package:admin/core/theme/themes.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/widgets/rounded_bg_icon_widget.dart';
import 'package:flutter/material.dart';

class FeatureInfoCard extends StatelessWidget {
  const FeatureInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final StatsInfoModel info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: AppTheme.backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(19, 17, 32, 0.1),
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedBgIconWidget(
                iconColor: info.iconColor,
                iconPath: info.svgSrc,
              ),
            ],
          ),
          Text(
            info.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            info.subtitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
