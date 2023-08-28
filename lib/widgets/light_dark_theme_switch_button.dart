import 'package:admin/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LightDarkThemeSwitchButton extends StatelessWidget {
  final themeProvider = Get.find<ThemeController>();

  LightDarkThemeSwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        themeProvider.toggleTheme();
      },
      icon: themeProvider.themeMode.value == ThemeMode.light
          ? const Icon(Icons.dark_mode)
          : const Icon(Icons.light_mode),
      label: Text(
        themeProvider.themeMode.value == ThemeMode.light
            ? 'Switch to Dark Mode'
            : 'Switch to Light Mode',
        style: const TextStyle(fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: themeProvider.themeMode.value == ThemeMode.light
            ? Colors.grey
            : Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
