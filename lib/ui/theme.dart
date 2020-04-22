import 'package:flutter/material.dart';

final ThemeData appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: primaryColor,
    accentColor: primaryColor,
    indicatorColor: primaryColor,
    primaryColorDark: primaryColor,
    canvasColor: canvasColor,
    errorColor: redColor,
    iconTheme: IconThemeData(color: primaryColor, size: 16),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding: const EdgeInsets.only(top: 12, left: 12),
        fillColor: whiteColor,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(100)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(100))),
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildPrimaryTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline5: base.headline5.copyWith(fontWeight: FontWeight.w500),
    subtitle2: base.subtitle2.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    caption: base.caption.copyWith(
      fontSize: 12.0,
    ),
    bodyText2: base.bodyText2.copyWith(
      fontSize: 12.0,
      wordSpacing: 2,
    ),
    button: base.button.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
  );
}

TextTheme _buildPrimaryTextTheme(TextTheme base) {
  return base.copyWith(
    headline5: base.headline5.copyWith(fontWeight: FontWeight.w500),
    subtitle2: base.subtitle2.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    caption: base.caption.copyWith(
      fontSize: 12.0,
    ),
    bodyText2: base.bodyText2.copyWith(
      fontSize: 12.0,
      color: primaryColor,
      wordSpacing: 2,
    ),
    button: base.button.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
  );
}

final primaryColor = Color(0xff5B63FE);
final whiteColor = Colors.white;
final redColor = Colors.red;
final canvasColor = Color(0xffF3F3F7);
