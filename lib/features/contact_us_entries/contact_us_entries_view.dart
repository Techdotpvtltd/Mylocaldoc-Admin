import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/header.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

class ContactUsEntriesView extends StatefulWidget {
  const ContactUsEntriesView({super.key});

  @override
  State<ContactUsEntriesView> createState() => _ContactUsEntriesViewState();
}

class _ContactUsEntriesViewState extends State<ContactUsEntriesView> {
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
            const TempWidgetTitle("Contact Us Form Submissions")
          ],
        ),
      ),
    );
  }
}
