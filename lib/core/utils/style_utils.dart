import 'package:admin/core/theme/themes.dart';
import 'package:flutter/material.dart';

const sideNaveActiveBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
    bottomRight: Radius.circular(30),
  ),
  boxShadow: [
    BoxShadow(
      color: Color.fromRGBO(19, 17, 32, 0.42),
      offset: Offset(0, 4),
      blurRadius: 8,
      spreadRadius: -4,
    ),
  ],
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(198, 167, 254, 1),
      Color.fromRGBO(145, 85, 253, 1),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 0.94],
    transform:
        GradientRotation(98 * 3.14159 / 180), // Convert degrees to radians
  ),
);

var boxShadowDecoration = BoxDecoration(
  color: AppTheme.isLightMode ? Colors.white : const Color(0xFF312D4B),
  borderRadius: BorderRadius.circular(6),
  boxShadow: const [
    BoxShadow(
      color: Color.fromRGBO(58, 53, 65, 0.2),
      blurRadius: 1,
      offset: Offset(0, 2),
    ),
    BoxShadow(
      color: Color.fromRGBO(58, 53, 65, 0.14),
      blurRadius: 1,
      offset: Offset(0, 1),
    ),
    BoxShadow(
      color: Color.fromRGBO(58, 53, 65, 0.12),
      blurRadius: 3,
      offset: Offset(0, 1),
    ),
    BoxShadow(
      color: Color.fromRGBO(58, 53, 65, 0.1),
      blurRadius: 10,
      offset: Offset(0, 2),
    ),
  ],
);
