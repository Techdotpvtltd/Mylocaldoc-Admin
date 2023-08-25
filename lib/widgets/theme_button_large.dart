import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';

class ThemeButtonLarge extends StatelessWidget {
  const ThemeButtonLarge({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(theme.colorScheme.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(
                  color: theme.colorScheme.primary), // White border color
            ),
          ),
          //maximumSize: MaterialStateProperty.all<Size>(const Size(530, 58)),
          minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.maxFinite, 56)), // Height of 58
          //
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
