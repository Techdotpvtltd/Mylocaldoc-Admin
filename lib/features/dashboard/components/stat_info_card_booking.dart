import 'package:admin/core/models/stats_info_model.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/widgets/rounded_bg_icon_widget.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class StatInfoCardBooking extends StatelessWidget {
  StatInfoCardBooking({
    Key? key,
    required this.info,
  }) : super(key: key);

  final MembersBookingInfoModel info;

  final data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedBgIconWidget(
            iconColor: info.iconColor!,
            iconPath: info.svgSrc!,
          ),
          Text(
            info.title!,
            style: AppStyle.text14LatoBoldBlueGrey,
          ),
          Text(
            info.value!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.displaySmall!.copyWith(
              fontSize: 32,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 30.0,
                width: 70,
                child: Sparkline(
                  data: data,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  info.percentage!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displayLarge!.copyWith(
                    color: appColors.blueA200,
                    fontSize: 12,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
