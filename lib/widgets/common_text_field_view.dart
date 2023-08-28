import 'package:admin/core/theme/app_colors.dart';
import 'package:admin/core/theme/themes.dart';
import 'package:flutter/material.dart';

class CommonTextFieldView extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final bool isObscureText, isAllowTopTitleView;
  final EdgeInsetsGeometry padding;
  final Function(String)? onChanged;
  final VoidCallback? toggleObscure;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final double textFieldBoxHeight;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validator;

  const CommonTextFieldView({
    Key? key,
    this.hintText = '',
    this.isObscureText = false,
    this.padding = const EdgeInsets.only(),
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.isAllowTopTitleView = true,
    this.errorText,
    required this.labelText,
    required this.controller,
    this.toggleObscure,
    this.textFieldBoxHeight = 60,
    this.textCapitalization = TextCapitalization.words,
    this.prefixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: textFieldBoxHeight,
            child: Center(
              child: TextFormField(
                validator: validator,
                controller: controller,
                textCapitalization: textCapitalization,
                maxLines: 1,
                onChanged: onChanged,
                style: TextStyle(
                  color: AppTheme.isLightMode
                      ? AppColors.textColoForLight
                      : AppColors.textColoForDark,
                ),
                obscureText: isObscureText,
                cursorColor: Theme.of(context).primaryColor,
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                decoration: InputDecoration(
                  isDense: true,
                  suffixIcon: toggleObscure != null
                      ? isObscureText
                          ? IconButton(
                              icon: Icon(Icons.visibility_off,
                                  color: AppColors.blueGray300, size: 25),
                              onPressed: toggleObscure,
                            )
                          : IconButton(
                              icon: Icon(Icons.visibility,
                                  color: AppColors.blueGray300, size: 25),
                              onPressed: toggleObscure,
                            )
                      : null,
                  labelText: labelText,
                  prefixIcon: prefixIcon,
                  prefixIconConstraints: const BoxConstraints(
                    maxHeight: 50,
                    maxWidth: 56,
                  ),
                  //hintText: labelText,
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.isLightMode
                        ? AppColors.textColoForLight
                        : AppColors.textColoForDark,
                  ),
                  hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppTheme.isLightMode
                            ? AppColors.textColoForLight
                            : AppColors.textColoForDark,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.isLightMode
                          ? AppColors.textColoForLight
                          : AppColors.textColoForDark,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.isLightMode
                          ? AppColors.textColoForLight
                          : AppColors.textColoForDark,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                keyboardType: keyboardType,
              ),
            ),
          ),
          if (errorText != null && errorText != '')
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 16, top: 4, bottom: 4),
              child: Text(
                errorText ?? "",
                style: TextStyle(
                  color: Colors.red.shade300,
                  fontSize: 12,
                ),
              ),
            )
        ],
      ),
    );
  }
}
