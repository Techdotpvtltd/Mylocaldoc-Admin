import 'package:flutter/material.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  final Map<String, AppColors> _supportedCustomColor = {'primary': AppColors()};

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [newTheme].
  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  /// Returns the primary colors for the current theme.
  AppColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? AppColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              26,
            ),
          ),
          shadowColor: appColors.deepPurple80099,
          elevation: 13,
        ),
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          color: appColors.whiteA700,
          fontSize: 12,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appColors.whiteA700,
          fontSize: 14,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: TextStyle(
          color: appColors.whiteA700,
          fontSize: 16,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appColors.whiteA700,
          fontSize: 24,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appColors.whiteA700,
          fontSize: 28,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: appColors.whiteA700,
          fontSize: 9,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appColors.whiteA700,
          fontSize: 10,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appColors.whiteA700,
          fontSize: 12,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appColors.whiteA700,
          fontSize: 14,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appColors.whiteA700,
          fontSize: 18,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appColors.whiteA700,
          fontSize: 22,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: appColors.whiteA700,
          fontSize: 34,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          color: appColors.whiteA700,
          fontSize: 40,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        displayLarge: TextStyle(
          color: appColors.whiteA700,
          fontSize: 48,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  AppColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    background: Color(0XFF181A20),
    error: Color(0XFF00021A),
    errorContainer: Color(0XFF431675),
    inversePrimary: Color(0XFFD8DAE5),
    inverseSurface: Color(0XFF00021A),
    onBackground: Color(0XFF431678),
    onError: Color(0XFF6B28B6),
    onErrorContainer: Color(0XFFD8DAE5),
    onInverseSurface: Color(0XFF6B28B6),
    onPrimary: Color(0XFF00021A),
    onPrimaryContainer: Color(0XFF431678),
    onSecondary: Color(0XFF431678),
    onSecondaryContainer: Color(0XFF00021A),
    onSurface: Color(0XFF431678),
    onSurfaceVariant: Color(0XFF00021A),
    onTertiary: Color(0XFF431678),
    onTertiaryContainer: Color(0XFF00021A),
    outline: Color(0XFF00021A),
    outlineVariant: Color(0XFFD8DAE5),
    primary: Color(0XFF00BDEF),
    primaryContainer: Color(0XFFD8DAE5),
    scrim: Color(0XFFD8DAE5),
    secondary: Color(0XFFD8DAE5),
    secondaryContainer: Color(0XFF6B28B6),
    shadow: Color(0XFF00021A),
    surface: Color(0XFFD8DAE5),
    surfaceTint: Color(0XFF00021A),
    surfaceVariant: Color(0XFF6B28B6),
    tertiary: Color(0XFFD8DAE5),
    tertiaryContainer: Color(0XFF6B28B6),
  );
}

/// Class containing custom colors for a primary theme.
class AppColors {
  // Amber
  Color get amberA400 => const Color(0XFFFFC600);
  // Black
  Color get black242424 => const Color(0XFF242424);
  Color get black900 => const Color(0XFF010101);
  Color get black90001 => const Color(0XFF020202);
  Color get black90002 => const Color(0XFF000000);
  Color get black333333 => const Color(0xFF333333);
  Color get black404143 => const Color(0xFF404143);
  Color get blue2004c => const Color(0X4CADBFFF);
  // Blue #165BAA
  Color get blue900 => const Color(0XFF165BAA);
  // BlueGray #8F95B2
  Color get blueGray300 => const Color(0XFF8F95B2);
  Color get blueGray400 => const Color(0XFF888888);
  Color get blueGray50 => const Color(0XFFF1EEF7);
  Color get blueGray600 => const Color(0XFF56637D);
  Color get blueGray900 => const Color(0XFF200B4B);
  // DeepPurple
  Color get deepPurple100 => const Color(0XFFCAC4D5);
  Color get deepPurple400 => const Color(0XFF6B5CD2);
  Color get deepPurple40001 => const Color(0XFF9254D7);
  Color get deepPurple700 => const Color(0XFF59369D);
  Color get deepPurple80099 => const Color(0X994810AA);
  Color get deepPurple8009901 => const Color(0X994811AA);
  Color get deepPurpleA20087 => const Color(0X878047E3);
  // Gray   #EBEBEB
  Color get gray200 => const Color(0XFFEBEBEB);
  Color get gray400 => const Color(0XFFC4C4C4);
  Color get gray50 => const Color(0XFFF8F8F8);
  Color get gray5001 => const Color(0XFFF6F4FF);
  Color get gray600 => const Color(0XFF775483);
  Color get gray60001 => const Color(0XFF765482);
  // Indigo
  Color get indigo60000 => const Color(0X003A5999);
  Color get indigo900 => const Color(0XFF2C0258);
  // Lime
  Color get lime700 => const Color(0XFFC7A251);
  Color get lime800 => const Color(0XFFA58338);
  // Pink
  Color get pink300 => const Color(0XFFEC4EC0);
  //#EB4DBF
  Color get pink30001 => const Color(0XFFEB4DBF);
  Color get pink30099 => const Color(0X99F75D7D);
  // Purple
  Color get purple400 => const Color(0XFFA155B9);
  Color get purple40001 => const Color(0XFFA54EE9);
  //#8B29C4
  Color get purple500 => const Color(0XFF8B29C4);
  Color get purple50001 => const Color(0XFF8B2AC4);
  Color get purple900 => const Color(0XFF431776);
  // #2B1049
  Color get purpleDark => const Color(0XFF2B1049);
  Color get purpleLight => const Color(0xFFA64FEA);

  // Red
  Color get red900 => const Color(0XFFB20B0B);
  Color get redA700 => const Color(0XFFFF0000);
  Color get redFF754C => const Color(0XFFFF754C);
  //
  // White
  Color get whiteA700 => const Color(0XFFFFFFFF);
  Color get whiteA7007e => const Color(0xFFFFFF7E);
  Color get blueA200 => const Color(0xFF3F8CFF);
  Color get red5033 => const Color(0xffffebf6).withOpacity(0.33);
  Color get deepPurple600 => const Color(0xFF5F27BD);
  Color get indigo503301 => const Color(0xffe1e1fb).withOpacity(0.33);
  Color get teal100 => const Color(0xFFA0D7E7);
  Color get gray30099 => const Color(0xffd8dae5).withOpacity(0.99);
  Color get deepPurple40019 => const Color(0xff6b5cd2).withOpacity(0.19);
  Color get purple5033 => const Color(0xffffccfc).withOpacity(0.33);
  Color get orange5033 => const Color(0xfffff2dc).withOpacity(0.33);
  Color get whiteA70019 => const Color(0xFFFFFF19);
  Color get lightBlue5033 => const Color(0xffe7f9ff).withOpacity(0.33);
  Color get purple300 => const Color(0xFFB16FD7);
  Color get blue8003f => const Color(0xff0049c6).withOpacity(0.33);
  Color get blueGray100 => const Color(0xFFD9D9D9);
  Color get black9000c => const Color(0xff000000);
  Color get blueGray30026 => const Color(0xff8f95b2).withOpacity(0.26);
  Color get orange200 => const Color(0xFFFFCE72);
  Color get whiteA70066 => const Color(0xffffffff).withOpacity(0.66);
  Color get deepPurple50066 => const Color(0xff6b28b6).withOpacity(0.66);
  Color get gray500f => const Color(0xfff9fafc);
  Color get indigo5033 => const Color(0xffe6e8f0).withOpacity(0.33);
  Color get cyan50 => const Color(0xFFCCF3FF);
  Color get gray5023 => const Color(0xfff9fafc).withOpacity(0.23);
  Color get deepPurple500 => const Color(0xFF6B28B6);
  Color get gray150 => const Color(0xFFF8FAFF);
  Color get whiteA70033 => const Color(0xffffffff).withOpacity(0.33);
  Color get black90066 => const Color(0xff000000).withOpacity(0.66);
  Color get indigo5063 => const Color(0xffe6e8f0).withOpacity(0.63);
  Color get deepPurpleA100 => const Color(0xFF9D68F7);
  Color get deepOrange400 => const Color(0xFFFF754B);
  Color get pink200 => const Color(0xFFFFA2C0);
  Color get gray5033 => const Color(0xfff6f6fb).withOpacity(0.33);
  Color get whiteA7006c => const Color(0xffffffff);
  Color get gray500 => const Color(0xFF92929D);
  Color get blue800 => const Color(0xFF0049C6);
  Color get indigo50 => const Color(0xFFE6E8F0);
  Color get gray900 => const Color(0xFF081735);
  Color get gray90001 => const Color(0xFF282828);
  Color get gray300 => const Color(0xFFD8DAE5);
  Color get indigo5019 => const Color(0xffe6e8f0).withOpacity(0.19);
  Color get indigo100 => const Color(0xFFC8D0F3);
  Color get lightBlue5087 => const Color(0xffe7f9ff).withOpacity(0.87);
  Color get cyan5033 => const Color(0xffccf3ff).withOpacity(0.33);
  Color get blueIconColor => const Color(0xFF6C5DD3);
  //
}

AppColors get appColors => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
