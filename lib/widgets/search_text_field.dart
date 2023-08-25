import 'package:admin/core/theme/theme_helper.dart';
import 'package:admin/core/values/local_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTextField extends StatelessWidget {
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

  const SearchTextField({
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
    this.textFieldBoxHeight = 44,
    this.textCapitalization = TextCapitalization.words,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: appColors.black404143,
                borderRadius: BorderRadius.circular(12)),
            height: textFieldBoxHeight,
            width: 200,
            child: Center(
              child: TextField(
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
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SvgPicture.asset(LocalImages.imgSearch),
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    maxHeight: 50,
                    maxWidth: 56,
                  ),
                  hintText: labelText,
                  labelStyle: TextStyle(color: appColors.blueGray300),
                  hintStyle: theme.textTheme.bodyMedium!
                      .copyWith(color: appColors.blueGray300),
                  enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.blueGray300),
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                  border: InputBorder.none,
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
