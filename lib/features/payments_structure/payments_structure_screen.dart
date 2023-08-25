import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/header.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

class PaymentsStructureScreen extends StatefulWidget {
  const PaymentsStructureScreen({super.key});

  @override
  State<PaymentsStructureScreen> createState() =>
      _PaymentsStructureScreenState();
}

class _PaymentsStructureScreenState extends State<PaymentsStructureScreen> {
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: appColors.black90002,
        child: const SingleChildScrollView(
          primary: false,
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              SizedBox(height: defaultPadding),
              TempWidgetTitle("Contact Us Form Submissions")
            ],
          ),
        ),
      ),
    );
  }
}
