import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/dash_board_widgets.dart';
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
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            const SizedBox(height: defaultPadding),
            const DashBoardWidgets()
          ],
        ),
      ),
    );
  }
}
