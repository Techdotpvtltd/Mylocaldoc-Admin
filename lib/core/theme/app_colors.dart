import 'package:flutter/material.dart';

class AppColors {
  static Color textColoForDark = const Color(0xFFE7E3FC);
  static Color textColoForLight = const Color(0xFF666666);

  // 3A3541

  static Color black90002 = const Color(0XFF000000);
  static Color whiteA700 = fromHex('#ffffff');
  static Color fbBlue = fromHex('#1877F2');

  // Black
  static Color black900 = const Color(0XFF000000);

  // Blue
  static Color blue200 = const Color(0XFFA5C9FF);
  static Color blue300 = const Color(0XFF5DB5F5);
  static Color blue500 = const Color(0XFF2AA4F4);

  // BlueGray
  static Color blueGray100 = const Color(0XFFD8D8D8);
  static Color blueGray300 = const Color(0XFF939DAE);
  static Color blueGray400 = const Color(0XFF888888);
  static Color blueGray50 = const Color(0XFFF1F1F2);
  static Color blueGray90019 = const Color(0X19313837);

  // DeepPurple
  static Color deepPurpleA100 = const Color(0XFFAC9AFC);
  static Color deepPurpleA10001 = const Color(0XFF947EFD);

  // Gray
  static Color gray100 = const Color(0XFFF4F4F4);
  static Color gray10001 = const Color(0XFFF5F5F5);
  static Color gray200 = const Color(0XFFEEEEEE);
  static Color gray300 = const Color(0XFFE0E0E0);
  static Color gray30001 = const Color(0XFFD8DCEA);
  static Color gray400 = const Color(0XFFBDBDBD);
  static Color gray50 = const Color(0XFFF9F9F9);
  static Color gray500 = const Color(0XFF9E9E9E);
  static Color gray5001 = const Color(0XFFF7FCFF);
  static Color gray5002 = const Color(0XFFF7F8FA);
  static Color gray600 = const Color(0XFF757575);
  static Color gray60001 = const Color(0XFF727185);
  static Color gray700 = const Color(0XFF616161);
  static Color gray800 = const Color(0XFF424242);
  static Color gray90019 = const Color(0X19131A2C);

  // Green
  static Color green400 = const Color(0XFF5BD97E);
  static Color greenA200 = const Color(0XFF74E2BE);

  // Indigo
  static Color indigo50 = const Color(0XFFE0E7F2);
  static Color indigo5001 = const Color(0XFFEAEEF9);
  static Color indigo900 = const Color(0XFF201D67);
  static Color indigoA100 = const Color(0XFF7E92F8);
  static Color indigoA10019 = const Color(0X197483F4);
  static Color indigoA20019 = const Color(0X197280F3);

  // LightBlue
  static Color lightBlue700 = const Color(0XFF007AD9);

  // Orange
  static Color orange100 = const Color(0XFFFED29F);
  static Color orangeA200 = const Color(0XFFFFA83F);

  // Pink
  static Color pink300 = const Color(0XFFFF5CA9);

  // Red
  static Color red500 = const Color(0XFFEB4335);
  static Color redA200 = const Color(0XFFF75555);

  // Teal
  static Color teal500 = const Color(0XFF12A575);
  static Color tealA700 = const Color(0XFF17CE92);

  // theme Colors
  static Color onErrorContainer = const Color(0XFF07061F);
  static Color errorContainer = const Color(0XFF43425C);
  static Color primaryContainer = const Color(0XFF212121);
  static Color background = const Color(0XFF212121);
  static Color error = const Color(0X7C0E112D);
  static Color inversePrimary = const Color(0XFF212121);
  static Color inverseSurface = const Color(0X7C0E112D);
  static Color onBackground = const Color(0XFFFFADD4);
  static Color onError = const Color(0XFF707CF3);
  static Color onInverseSurface = const Color(0XFF707CF3);
  static Color onPrimary = const Color(0X7C0E112D);
  static Color onPrimaryContainer = const Color(0XFFFFADD4);
  static Color onSecondary = const Color(0XFFFFADD4);
  static Color onSecondaryContainer = const Color(0X7C0E112D);
  static Color onSurface = const Color(0XFFFFADD4);
  static Color onSurfaceVariant = const Color(0X7C0E112D);
  static Color onTertiary = const Color(0XFFFFADD4);
  static Color onTertiaryContainer = const Color(0X7C0E112D);
  static Color outline = const Color(0X7C0E112D);
  static Color outlineVariant = const Color(0XFF212121);
  static Color primary = const Color(0XFF00BDEF);
  static Color scrim = const Color(0XFF212121);
  static Color secondary = const Color(0XFF212121);
  static Color secondaryContainer = const Color(0XFF6972F0);
  static Color shadow = const Color(0X7C0E112D);
  static Color surface = const Color(0XFF212121);
  static Color surfaceTint = const Color(0X7C0E112D);
  static Color surfaceVariant = const Color(0XFF6972F0);
  static Color tertiary = const Color(0XFF212121);
  static Color tertiaryContainer = const Color(0XFF6972F0);

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
