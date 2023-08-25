import 'package:admin/core/helpers/samples/bar/bar_chart_sample6.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SalesSummaryChartsWidget extends StatelessWidget {
  const SalesSummaryChartsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sales Summary",
                style: theme.textTheme.headlineMedium,
              ),
              Row(
                children: [
                  Text(
                    "Download report",
                    style: AppStyle.text12NunitoRegularPink,
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset(
                    LocalImages.imgDownload,
                    colorFilter: ColorFilter.mode(
                      appColors.blueIconColor,
                      BlendMode.srcIn,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Showing for:",
                    style: AppStyle.text14LatoBoldBlueGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SvgPicture.asset(
                      LocalImages.calenderIcon,
                      colorFilter: ColorFilter.mode(
                        appColors.pink300,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Text(
                    "12 January - 17 January 2021",
                    style: AppStyle.text12NunitoRegularPink,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: SvgPicture.asset(
                      LocalImages.downArrowAnglePink,
                      colorFilter: ColorFilter.mode(
                        appColors.pink300,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  //
                ],
              ),
              Row(
                children: [
                  buildBoxWidget(appColors.blueIconColor, "Electronics"),
                  const SizedBox(width: 10),
                  buildBoxWidget(appColors.teal100, "Fashion"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          BarChartSample6(),
        ],
      ),
    );
  }

  Row buildBoxWidget(Color boxColor, String title) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          width: 12,
          height: 12,
          color: boxColor,
        ),
        Text(
          title,
          style: AppStyle.text12NunitoRegularBlueGray,
        ),
      ],
    );
  }
}
