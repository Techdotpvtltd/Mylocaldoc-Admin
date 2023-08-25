import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/header.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

class PersonalizationsView extends StatefulWidget {
  const PersonalizationsView({super.key});

  @override
  State<PersonalizationsView> createState() => _PersonalizationsViewState();
}

class _PersonalizationsViewState extends State<PersonalizationsView> {
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
        child: SingleChildScrollView(
          primary: false,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              const SizedBox(height: defaultPadding),
              const TempWidgetTitle("Personalization")
            ],
          ),
        ),
      ),
    );
  }
}
