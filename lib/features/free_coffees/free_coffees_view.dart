import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/header.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

class FreeCoffeesView extends StatefulWidget {
  const FreeCoffeesView({super.key});

  @override
  State<FreeCoffeesView> createState() => _FreeCoffeesViewState();
}

class _FreeCoffeesViewState extends State<FreeCoffeesView> {
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
              const TempWidgetTitle("Free Coffee")
            ],
          ),
        ),
      ),
    );
  }
}
