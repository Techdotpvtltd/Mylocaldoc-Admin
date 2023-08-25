import 'package:admin/core/theme/theme_helper.dart';
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
                style: TextStyle(color: appColors.whiteA700),
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
                                  color: appColors.blueGray300, size: 25),
                              onPressed: toggleObscure,
                            )
                          : IconButton(
                              icon: Icon(Icons.visibility,
                                  color: appColors.blueGray300, size: 25),
                              onPressed: toggleObscure,
                            )
                      : null,
                  //labelText: labelText,
                  prefixIcon: prefixIcon,
                  prefixIconConstraints: const BoxConstraints(
                    maxHeight: 50,
                    maxWidth: 56,
                  ),
                  hintText: labelText,
                  labelStyle: TextStyle(color: appColors.whiteA700),
                  hintStyle: theme.textTheme.bodyLarge,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.whiteA700),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.whiteA700),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.whiteA700),
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
