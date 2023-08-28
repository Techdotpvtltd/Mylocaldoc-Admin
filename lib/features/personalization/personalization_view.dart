import 'package:admin/controllers/personalization_controller.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/dashboard/components/header.dart';
import 'package:admin/features/personalization/components/add_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalizationsView extends StatelessWidget {
  PersonalizationsView({super.key});

  final personalizationController = Get.put(PersonalizationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Text(
                  "Personalization",
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
                          content: AddPersonalizationsDialogue(),
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
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "List of personalization Points",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: 40),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: personalizationController.personalizations.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Text(
                          "${index + 1}",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        title: Text(personalizationController
                                .personalizations[index].value ??
                            ""),
                        trailing: ActionButtons(
                          onTapEdit: () {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                content: AddPersonalizationsDialogue(
                                    personalizationModel:
                                        personalizationController
                                            .personalizations[index]),
                                backgroundColor: Colors.transparent,
                                contentPadding: EdgeInsets.zero,
                                insetPadding: const EdgeInsets.only(left: 0),
                              ),
                            );
                          },
                          onTapDelete: () {
                            personalizationController.deletePersonalizeItem(
                                personalizationController
                                    .personalizations[index].id!);
                          },
                        ),
                      ),
                      const Divider()
                    ],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
