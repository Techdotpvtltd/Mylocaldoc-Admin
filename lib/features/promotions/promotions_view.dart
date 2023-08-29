import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/header.dart';
import 'package:admin/features/promotions/add_promotion_dialogue.dart';
import 'package:admin/widgets/temp_title_widget.dart';
import 'package:flutter/material.dart';

class PromotionsView extends StatefulWidget {
  const PromotionsView({super.key});

  @override
  State<PromotionsView> createState() => _PromotionsViewState();
}

class _PromotionsViewState extends State<PromotionsView> {
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
            const TempWidgetTitle("Promotions"),
            Row(
              children: [
                Text(
                  "Promotions",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(width: 100),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => const AlertDialog(
                          content: AddPromotionDialogue(),
                          backgroundColor: Colors.transparent,
                          contentPadding: EdgeInsets.zero,
                          insetPadding: EdgeInsets.only(left: 0),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Add"),
                  ),
                ),
              ],
            ),
            // Header Bg Image
            // Title Text
            // Subtitle Text
            // Description Text
            // Promotion List Text
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "List of personalization Points",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
