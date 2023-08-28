import 'package:admin/core/theme/app_colors.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/header.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

class OurLocalsView extends StatefulWidget {
  const OurLocalsView({super.key});

  @override
  State<OurLocalsView> createState() => _OurLocalsViewState();
}

class _OurLocalsViewState extends State<OurLocalsView> {
  int currentTabIndex = 0;

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
            const TempWidgetTitle("Our Locals")
          ],
        ),
      ),
    );
  }
}
