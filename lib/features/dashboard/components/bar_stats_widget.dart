import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/stats_card_grid.dart';
import 'package:flutter/material.dart';

class BarStatsWidget extends StatelessWidget {
  const BarStatsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const StatsCardGrid(),
                  const SizedBox(height: defaultPadding),
                  // if mobile add a padding
                  if (Responsive.isMobile(context))
                    const SizedBox(height: defaultPadding),
                  // if mobile add SideChartsWidget
                  // if (Responsive.isMobile(context))
                  //   const SalesSummaryChartsWidget(),
                ],
              ),
            ),
            if (!Responsive.isMobile(context))
              const SizedBox(width: defaultPadding),
            // On Mobile means if the screen is less than 850 we don't want to show it
            // if (!Responsive.isMobile(context))
            //   const Expanded(
            //     flex: 2,
            //     child: SalesSummaryChartsWidget(),
            //   ),
          ],
        ),

        ///======== Members Booking Stat Row
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Column(
        //         children: [
        //           const MembersBookingRow(),
        //           // if mobile add a padding
        //           if (Responsive.isMobile(context))
        //             const SizedBox(height: defaultPadding),
        //           // if mobile add SideChartsWidget
        //           if (Responsive.isMobile(context))
        //             const TotalIncomeChartsWidget()
        //         ],
        //       ),
        //     ),
        //     if (!Responsive.isMobile(context))
        //       const SizedBox(width: defaultPadding),
        //     // On Mobile means if the screen is less than 850 we don't want to show it
        //     if (!Responsive.isMobile(context))
        //       const Expanded(
        //         flex: 2,
        //         child: TotalIncomeChartsWidget(),
        //       ),
        //   ],
        // ),

        ///======== Most Popular Areas Row
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     const Expanded(
        //       flex: 2,
        //       child: Column(
        //         children: [
        //           TitleSubTitleBoxWidget(
        //             title: "12345",
        //             subTitle: "Page Views",
        //           ),
        //           TitleSubTitleBoxWidget(
        //             title: "12345",
        //             subTitle: "Highlight Content views",
        //           ),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       flex: 4,
        //       child: Container(
        //         padding: const EdgeInsets.all(defaultPadding),
        //         margin: const EdgeInsets.only(top: 15, right: 10),
        //         decoration: const BoxDecoration(
        //           color: secondaryColor,
        //           borderRadius: BorderRadius.all(Radius.circular(10)),
        //         ),
        //         child: Column(
        //           children: [
        //             Text(
        //               "Most Popular Areas",
        //               style: AppStyle.text22PoppinsBoldWhite,
        //             ),
        //             // Figma Flutter Generator Rectangle2009Widget - RECTANGLE

        //             const LocationProgressBarWidget(),
        //             const LocationProgressBarWidget(),
        //             const LocationProgressBarWidget(),
        //             const LocationProgressBarWidget(),
        //             const LocationProgressBarWidget(),
        //           ],
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 4,
        //       child: Container(
        //         padding: const EdgeInsets.all(defaultPadding),
        //         margin: const EdgeInsets.only(top: 15, right: 10),
        //         decoration: const BoxDecoration(
        //           color: secondaryColor,
        //           borderRadius: BorderRadius.all(Radius.circular(10)),
        //         ),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(bottom: 8.0),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Text(
        //                     "Total Sales",
        //                     style: AppStyle.text22PoppinsBoldWhite,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Text(
        //                         "Monthly",
        //                         style: AppStyle.text13PoppinsSemiBoldPink,
        //                       ),
        //                       const SizedBox(width: 5),
        //                       SvgPicture.asset(
        //                         LocalImages.imgOffer,
        //                         colorFilter: ColorFilter.mode(
        //                           appColors.pink300,
        //                           BlendMode.srcIn,
        //                         ),
        //                       )
        //                     ],
        //                   )
        //                 ],
        //               ),
        //             ),
        //             // Figma Flutter Generator Rectangle2009Widget - RECTANGLE
        //             Center(
        //               child: SizedBox(
        //                 height: 200,
        //                 child: LineChartSample6(),
        //               ),
        //             ),

        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 buildBoxWidget(
        //                     appColors.blue900, "Total Sales Per Event"),
        //                 const SizedBox(width: 10),
        //                 buildBoxWidget(appColors.purple400, "Net Sales"),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        ///======== Most Popular Areas Row
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Expanded(
        //       flex: 4,
        //       child: Container(
        //         padding: const EdgeInsets.all(defaultPadding),
        //         margin: const EdgeInsets.only(top: 15, right: 10),
        //         decoration: const BoxDecoration(
        //           color: secondaryColor,
        //           borderRadius: BorderRadius.all(Radius.circular(10)),
        //         ),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(bottom: 8.0),
        //               child: Text(
        //                 "Age Gaps of Event",
        //                 style: AppStyle.text22PoppinsBoldWhite,
        //               ),
        //             ),
        //             const PercentageBarWidget(),
        //             const SizedBox(height: 10),
        //             Center(
        //               child: FractionallySizedBox(
        //                 widthFactor: 0.7,
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     buildInfoNameCircle(
        //                         "Youngest Customer", appColors.blueIconColor),
        //                     buildInfoNameCircle(
        //                         "Average Age", appColors.pink300),
        //                     buildInfoNameCircle(
        //                         "Oldest Customer", appColors.deepPurple500),
        //                   ],
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 4,
        //       child: Container(
        //         padding: const EdgeInsets.all(defaultPadding),
        //         margin: const EdgeInsets.only(top: 15, right: 10),
        //         decoration: const BoxDecoration(
        //           color: secondaryColor,
        //           borderRadius: BorderRadius.all(Radius.circular(10)),
        //         ),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(bottom: 8.0),
        //               child: Text(
        //                 "Customer Gender",
        //                 style: AppStyle.text22PoppinsBoldWhite,
        //               ),
        //             ),
        //             const PercentageBarWidget(),
        //             const SizedBox(height: 10),
        //             Center(
        //               child: FractionallySizedBox(
        //                 widthFactor: 0.5,
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     buildInfoNameCircle(
        //                         "Male", appColors.blueIconColor),
        //                     buildInfoNameCircle("Female", appColors.pink300),
        //                     buildInfoNameCircle(
        //                         "Other", appColors.deepPurple500),
        //                   ],
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //     const Expanded(
        //       flex: 2,
        //       child: Column(
        //         children: [],
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }

  Row buildInfoNameCircle(String title, Color circleColor) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          width: 9,
          height: 9,
          decoration: BoxDecoration(
            color: circleColor,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          title,
          style: AppStyle.text10PoppinsMediumWhite,
        ),
      ],
    );
  }

  Row buildBoxWidget(Color boxColor, String title) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          width: 21,
          height: 8,
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
