import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  // SharedPreferences instance
  final SharedPreferences _prefs = Get.find();

  // Initialize the theme mode based on stored preference
  void initTheme() {
    int storedTheme = _prefs.getInt('theme') ?? 0;
    themeMode.value = ThemeMode.values[storedTheme];
  }

  // Function to get the current theme mode
  ThemeMode getCurrentThemeMode() {
    return themeMode.value;
  }

  static bool get isLightMode {
    try {
      final result = Get.find<ThemeController>().getCurrentThemeMode();

      return result == ThemeMode.light;
    } catch (e) {
      return true;
    }
  }

  // Toggle theme and save the preference
  void toggleTheme() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
      _prefs.setInt('theme', ThemeMode.dark.index);
    } else {
      themeMode.value = ThemeMode.light;
      _prefs.setInt('theme', ThemeMode.light.index);
    }
  }
}
