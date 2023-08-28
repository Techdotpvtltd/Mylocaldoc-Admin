import 'package:admin/controllers/theme_controller.dart';
import 'package:admin/core/enums/enums.dart';
import 'package:admin/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static bool get isLightMode {
    try {
      final result = Get.find<ThemeController>().getCurrentThemeMode();

      return result == ThemeMode.light;
    } catch (e) {
      return true;
    }
  }

  // colors
  static Color get primaryColor {
    try {
      return const Color(0XFF00BDEF);
    } catch (e) {
      return getColor(ColorType.maroon);
    }
  }

  static Color get scaffoldBackgroundColor =>
      isLightMode ? const Color(0xFFF4F5FA) : const Color(0xFF24283D);

  static Color get backIconColor =>
      isLightMode ? const Color(0xFF000000) : const Color(0xFFFFFFFF);

  static Color get redErrorColor =>
      isLightMode ? const Color(0xFFAC0000) : const Color(0xFFAC0000);

  static Color get backgroundColor =>
      isLightMode ? const Color(0xFFFFFFFF) : const Color(0xFF312D4B);

  static Color get primaryTextColor =>
      isLightMode ? const Color(0xFF666666) : const Color(0xFFFFFFFF);

  static Color get secondaryTextColor =>
      isLightMode ? const Color(0xFFADADAD) : const Color(0xFF6D6D6D);

  static Color get whiteColor => const Color(0xFFFFFFFF);
  static Color get backColor => const Color(0xFF262626);

  // static Color get fontColor =>
  //     isLightMode ? const Color(0xFF1A1A1A) : const Color(0xFFF7F7F7);

  static ThemeData get getThemeData =>
      isLightMode ? getLightTheme() : getDarkTheme();

  static TextTheme _buildTextTheme(TextTheme base) {
    FontFamilyType fontType = FontFamilyType.roboto;
    try {
      fontType = FontFamilyType.roboto;
    } catch (_) {}

    // TextStyle? displayLarge   fontSize 112.0 | FontWeight.w100
    // TextStyle? displayMedium  fontSize 56.0 | FontWeight.w400
    // TextStyle? displaySmall   fontSize 45.0 | FontWeight.w400
    // TextStyle? headlineLarge, fontSize 40.0 | FontWeight.w400
    // TextStyle? headlineMedium fontSize 34.0 | FontWeight.w400
    // TextStyle? headlineSmall  fontSize 24.0 | FontWeight.w400
    // TextStyle? titleLarge     fontSize 20.0 | FontWeight.w500
    // TextStyle? titleMedium    fontSize 16.0 | FontWeight.w400
    // TextStyle? titleSmall     fontSize 14.0 | FontWeight.w500
    // TextStyle? bodyLarge      fontSize 14.0 | FontWeight.w500
    // TextStyle? bodyMedium     fontSize 14.0 | FontWeight.w400
    // TextStyle? bodySmall      fontSize 12.0 | FontWeight.w400
    // TextStyle? labelLarge     fontSize 14.0 | FontWeight.w500
    // TextStyle? labelMedium    fontSize 12.0 | FontWeight.w400
    // TextStyle? labelSmall     fontSize 10.0 | FontWeight.w400

    return base.copyWith(
      // TextStyle? displayLarge   fontSize 112.0 | FontWeight.w100
      displayLarge: getTextStyle(
          fontType,
          base.displayLarge!.copyWith(
            fontSize: 64,
            fontWeight: FontWeight.w700,
          )),

      // TextStyle? displayMedium  fontSize 56.0 | FontWeight.w400
      displayMedium: getTextStyle(
          fontType,
          base.displayMedium!.copyWith(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          )),

      // TextStyle? displaySmall   fontSize 45.0 | FontWeight.w400
      displaySmall: getTextStyle(
          fontType,
          base.displaySmall!.copyWith(
            fontSize: 34,
            fontWeight: FontWeight.w700,
          )),

      // TextStyle? headlineLarge, fontSize 40.0 | FontWeight.w400
      headlineLarge: getTextStyle(
          fontType,
          base.headlineLarge!.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.w700,
          )),

      // TextStyle? headlineMedium fontSize 34.0 | FontWeight.w400
      headlineMedium: getTextStyle(fontType, base.headlineMedium!),

      // TextStyle? headlineSmall  fontSize 24.0 | FontWeight.w400s
      headlineSmall: getTextStyle(
          fontType,
          base.headlineSmall!.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          )),

      // TextStyle? titleLarge     fontSize 20.0 | FontWeight.w500
      titleLarge: getTextStyle(
          fontType,
          base.titleLarge!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )),

      // TextStyle? titleMedium    fontSize 16.0 | FontWeight.w400
      titleMedium: getTextStyle(
          fontType,
          base.titleMedium!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          )),

      // TextStyle? titleSmall     fontSize 14.0 | FontWeight.w500
      titleSmall: getTextStyle(
          fontType,
          base.titleSmall!.copyWith(
            fontSize: 14,
          )),

      // TextStyle? bodyLarge      fontSize 14.0 | FontWeight.w500
      bodyLarge: getTextStyle(
          fontType,
          base.bodyLarge!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          )),

      // TextStyle? bodyMedium     fontSize 14.0 | FontWeight.w400s
      bodyMedium: getTextStyle(
          fontType,
          base.bodyMedium!.copyWith(
            color: AppColors.gray500,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          )),

      // TextStyle? bodySmall      fontSize 12.0 | FontWeight.w400
      bodySmall: getTextStyle(fontType, base.bodySmall!),

      // TextStyle? labelLarge     fontSize 14.0 | FontWeight.w500
      labelLarge: getTextStyle(
          fontType,
          base.labelLarge!.copyWith(
            color: AppColors.onError,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          )),

      // TextStyle? labelMedium    fontSize 12.0 | FontWeight.w400
      labelMedium: getTextStyle(fontType, base.labelMedium!),

      // TextStyle? labelSmall     fontSize 10.0 | FontWeight.w400
      labelSmall: getTextStyle(fontType, base.labelSmall!),
    );
  }

// we also get some Light and Dark color variants
  static Color getColor(ColorType colorData) {
    switch (colorData) {
      case ColorType.verdigris:
        return isLightMode ? const Color(0xFF4FBE9F) : const Color(0xFF4FBE9F);
      case ColorType.malibu:
        return isLightMode ? const Color(0xFF5DCAEC) : const Color(0xFF5DCAEC);
      case ColorType.darkSkyBlue:
        return isLightMode ? const Color(0xFF458CEA) : const Color(0xFF458CEA);
      case ColorType.bilobaFlower:
        return isLightMode ? const Color(0xFFff5f5f) : const Color(0xFFff5f5f);
      case ColorType.maroon:
        return isLightMode ? const Color(0xFFff8f8f) : const Color(0xFFff8f8f);
      case ColorType.cyan:
        return isLightMode ? const Color(0xFF19acb6) : const Color(0xFF19acb6);
    }
  }

  static TextStyle getTextStyle(
      FontFamilyType fontFamilyType, TextStyle textStyle) {
    switch (fontFamilyType) {
      case FontFamilyType.montserrat:
        return GoogleFonts.montserrat(textStyle: textStyle);
      case FontFamilyType.workSans:
        return GoogleFonts.workSans(textStyle: textStyle);
      case FontFamilyType.varela:
        return GoogleFonts.varela(textStyle: textStyle);
      case FontFamilyType.roboto:
        return GoogleFonts.roboto(textStyle: textStyle);
      case FontFamilyType.openSans:
        return GoogleFonts.openSans(textStyle: textStyle);
      case FontFamilyType.lato:
        return GoogleFonts.lato(textStyle: textStyle);
      case FontFamilyType.oswald:
        return GoogleFonts.oswald(textStyle: textStyle);
      case FontFamilyType.sourceSansPro:
        return GoogleFonts.sourceSansPro(textStyle: textStyle);
      case FontFamilyType.raleway:
        return GoogleFonts.raleway(textStyle: textStyle);
      case FontFamilyType.pTSans:
        return GoogleFonts.ptSans(textStyle: textStyle);
      case FontFamilyType.poppins:
        return GoogleFonts.poppins(textStyle: textStyle);
      case FontFamilyType.urbanist:
        return GoogleFonts.urbanist(textStyle: textStyle);
      default:
        return GoogleFonts.urbanist(textStyle: textStyle);
    }
  }

  static ThemeData getLightTheme() {
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: primaryColor,
    );

    final ThemeData base = ThemeData.light();

    return base.copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      canvasColor: scaffoldBackgroundColor,
      buttonTheme: _buttonThemeData(colorScheme),
      dialogTheme: _dialogTheme(),
      cardTheme: _cardTheme(),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: colorScheme.copyWith(background: backgroundColor),
    );
  }

  static ThemeData getDarkTheme() {
    final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: primaryColor,
    );
    final ThemeData base = ThemeData.dark();

    return base.copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      canvasColor: scaffoldBackgroundColor,
      buttonTheme: _buttonThemeData(colorScheme),
      dialogTheme: _dialogTheme(),
      cardTheme: _cardTheme(),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: colorScheme.copyWith(background: backgroundColor),
    );
  }

  static ButtonThemeData _buttonThemeData(ColorScheme colorScheme) {
    return ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    );
  }

  static DialogTheme _dialogTheme() {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0,
      backgroundColor: backgroundColor,
    );
  }

  static CardTheme _cardTheme() {
    return CardTheme(
      clipBehavior: Clip.antiAlias,
      color: backgroundColor,
      shadowColor: secondaryTextColor.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 8,
      margin: const EdgeInsets.all(0),
    );
  }

  static get mapCardDecoration => BoxDecoration(
        color: AppTheme.backIconColor,
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: AppTheme.getThemeData.dividerColor,
              offset: const Offset(4, 4),
              blurRadius: 8.0),
        ],
      );
  static get buttonDecoration => BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.getThemeData.dividerColor,
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
      );
  static get searchBarDecoration => BoxDecoration(
        color: AppTheme.backIconColor,
        borderRadius: const BorderRadius.all(Radius.circular(38)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.getThemeData.dividerColor,
            blurRadius: 8,
            // offset: Offset(4, 4),
          ),
        ],
      );

  static get boxDecoration => BoxDecoration(
        color: AppTheme.backIconColor,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.getThemeData.dividerColor,
            //   offset: Offset(2, 2),
            blurRadius: 8,
          ),
        ],
      );
}

enum ThemeModeType {
  system,
  dark,
  light,
}
