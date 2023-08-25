import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/bar_stats_widget.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

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
              Header(),
              const SizedBox(height: defaultPadding),
              const BarStatsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
