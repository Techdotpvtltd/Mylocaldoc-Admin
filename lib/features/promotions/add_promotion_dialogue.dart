import 'package:admin/controllers/personalization_controller.dart';
import 'package:admin/core/extensions/extension.dart';
import 'package:admin/core/helpers/helper_functions.dart';
import 'package:admin/models/personalization_model.dart';
import 'package:admin/core/utils/style_utils.dart';
import 'package:admin/core/values/strings_manager.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/exports/common_exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPromotionDialogue extends StatefulWidget {
  const AddPromotionDialogue({super.key, this.personalizationModel});

  final PersonalizationModel? personalizationModel;

  @override
  State<AddPromotionDialogue> createState() => _AddPromotionDialogueState();
}

class _AddPromotionDialogueState extends State<AddPromotionDialogue> {
  final personalizationController = Get.find<PersonalizationController>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _errorPersonalizeText = '';
  late TextEditingController _personalizeTextController;

  @override
  void initState() {
    _personalizeTextController = TextEditingController();
    super.initState();

    fillValueIfUpdate();
  }

  fillValueIfUpdate() {
    if (widget.personalizationModel?.value != null) {
      setState(() {
        _personalizeTextController.text =
            widget.personalizationModel?.value ?? "";
      });
    }
  }

  @override
  void dispose() {
    _personalizeTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: boxShadowDecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Add a Personalization",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    const VerticalSpace(20),
                    CommonTextFieldView(
                      controller: _personalizeTextController,
                      errorText: _errorPersonalizeText,
                      labelText: 'Personalization Text',
                      keyboardType: TextInputType.text,
                      onChanged: (String txt) {
                        final docId =
                            HelperFunctions.removeSpecialCharacters(txt);

                        "docId: $docId".log();
                      },
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return AppStrings.enterPassword;
                        } else if (val.isValidPassword) {
                          return null;
                        }
                        return AppStrings.passwordValidator;
                      },
                    ),
                    const VerticalSpace(20),
                    ThemeButtonLarge(
                      title: (widget.personalizationModel?.value != null)
                          ? 'Update Personalization'
                          : 'Add Personalization',
                      onTap: () async {
                        if (_allValidation()) {
                          ///  if Edit
                          if (widget.personalizationModel?.value != null) {
                            personalizationController
                                .editPersonalizeItem(
                              widget.personalizationModel?.id ?? "",
                              _personalizeTextController.text.trim(),
                            )
                                .then((value) {
                              _personalizeTextController.clear();

                              Get.back();
                              Get.snackbar(
                                  "Success", "Personalization is Updated");
                            });
                          } else {
                            // else Insert new
                            personalizationController
                                .savePersonalizeItem(
                                    _personalizeTextController.text.trim())
                                .then((value) {
                              _personalizeTextController.clear();

                              Get.back();
                              Get.snackbar(
                                  "Success", "Personalization is added");
                            });
                          }
                        }
                      },
                    ),
                    const VerticalSpace(30),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool _allValidation() {
    bool isValid = true;

    if (_personalizeTextController.text.trim().isEmpty) {
      _errorPersonalizeText = StringValues.requiredField;
      isValid = false;
    } else {
      _errorPersonalizeText = '';
    }
    setState(() {});
    return isValid;
  }
}
