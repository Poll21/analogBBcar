import 'package:flutter/material.dart';
import '../constants/constants.dart';


abstract class AppTheme {
  static final light = ThemeData(
    focusColor: selectedColor,
    highlightColor: textActiveColor,
    iconTheme: const IconThemeData(color: textPassiveColor),
    primaryIconTheme: const IconThemeData(color: textActiveColor),
    hintColor: textPassiveColor,
    primaryColor: primaryColor,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: primaryColor),
    scaffoldBackgroundColor: Colors.white,
  );
}

abstract class STextTheme {
  static final light = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}