import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/bar_stats_widget.dart';
import 'package:admin/features/dashboard/components/dashboard_sub_menu_text_button.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  List<Widget> adminPanelViews = [
    const BarStatsWidget(),
    const TempWidgetTitle("Restaurant"),
    const TempWidgetTitle("Lounge"),
    const TempWidgetTitle("Events"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: appColors.black90002,
        child: SingleChildScrollView(
          primary: false,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const Header(),
              const SizedBox(height: defaultPadding),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Row(
              //       children: [
              //         DashboardSubMenuTextButton(
              //           text: 'Bar',
              //           isSelected: currentTabIndex == 0 ? true : false,
              //           onPressed: () {
              //             setState(() {
              //               currentTabIndex = 0;
              //             });
              //           },
              //         ),
              //         DashboardSubMenuTextButton(
              //           text: 'Restaurant',
              //           isSelected: currentTabIndex == 1 ? true : false,
              //           onPressed: () {
              //             setState(() {
              //               currentTabIndex = 1;
              //             });
              //           },
              //         ),
              //         DashboardSubMenuTextButton(
              //           text: 'Lounge',
              //           isSelected: currentTabIndex == 2 ? true : false,
              //           onPressed: () {
              //             setState(() {
              //               currentTabIndex = 2;
              //             });
              //           },
              //         ),
              //         DashboardSubMenuTextButton(
              //           text: 'Events',
              //           isSelected: currentTabIndex == 3 ? true : false,
              //           onPressed: () {
              //             setState(() {
              //               currentTabIndex = 3;
              //             });
              //           },
              //         ),
              //       ],
              //     ),
              //     ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(8), // <-- Radius
              //         ),
              //         backgroundColor:
              //             theme.colorScheme.primary, // Background color
              //       ),
              //       child: const Text("Export all data to CSV "),
              //       onPressed: () {},
              //     )
              //   ],
              // ),
              adminPanelViews[currentTabIndex],
            ],
          ),
        ),
      ),
    );
  }
}
