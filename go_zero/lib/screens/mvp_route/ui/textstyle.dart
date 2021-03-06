import 'package:flutter/material.dart';
import 'package:go_zero/screens/mvp_route/ui/colors.dart';

abstract class GoZeroTextStyles {
  static const String FONTFAMILY = "Montserrat";

  static const double MULTIPLIER = 1;
  static const double DEFAULTBOLDSIZE = MULTIPLIER * 24;
  static const double DEFAULTREGULARSIZE = MULTIPLIER * 9;
  //static const double RECOMMENDEDSPACING = 0.16;

  static TextStyle semibold(double fontSize,
      {Color color = GoZeroColors.defaultText}) {
    return TextStyle(
        color: color,
        fontFamily: FONTFAMILY,
        fontSize: fontSize,
        fontWeight: FontWeight.w600);
  }

  static TextStyle bold(
      {Color color = GoZeroColors.defaultText,
      double fontSize = DEFAULTBOLDSIZE}) {
    return TextStyle(
        color: color,
        fontFamily: FONTFAMILY,
        fontSize: fontSize,
        fontWeight: FontWeight.bold);
  }

  static TextStyle regular(double fontSize,
      {Color color = GoZeroColors.defaultText,
      double letterSpacingFactor = 0,
      bool italic = false}) {
    return TextStyle(
      color: color,
      fontFamily: FONTFAMILY,
      fontSize: fontSize,
      fontStyle: italic ? FontStyle.italic : null,
      letterSpacing: letterSpacingFactor * fontSize,
    );
  }

  static TextStyle medium(double fontSize,
      {Color color = GoZeroColors.defaultText,
      double letterSpacingFactor = 0}) {
    return TextStyle(
      color: color,
      fontFamily: FONTFAMILY,
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      letterSpacing: letterSpacingFactor * fontSize,
    );
  }
}
