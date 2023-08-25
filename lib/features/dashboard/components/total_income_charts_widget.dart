import 'package:admin/core/helpers/samples/bar/bar_chart_sample2.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/exports/common_exports.dart';
import 'package:flutter/material.dart';

class TotalIncomeChartsWidget extends StatelessWidget {
  const TotalIncomeChartsWidget({
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
      child: SizedBox(
          height: 190,
          width: double.maxFinite,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const RoundedBgIconWidget(
                      iconColor: Color(0xFFFF9A7B),
                      iconPath: LocalImages.imgClaritywalletline,
                    ),
                    Text(
                      "Total Income",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        color: appColors.blueGray300,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "120K",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall!.copyWith(
                            fontSize: 32,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "This Month",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: appColors.pink200,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Last update yesterday',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appColors.pink200,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: BarChartSample2(),
              ),
            ],
          )),
    );
  }
}
