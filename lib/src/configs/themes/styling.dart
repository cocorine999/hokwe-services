import 'package:flutter/material.dart';

class AppTextStyle {
  final ThemeData theme;

  AppTextStyle._(this.theme);

  static AppTextStyle of(BuildContext context) {
    final theme = Theme.of(context);
    return AppTextStyle._(theme);
  }

  static const TextTheme textTheme =  TextTheme(

    displayLarge: _headline1,

    displayMedium: _headline2,

    displaySmall: _headline3,

    bodyLarge: _bodyText1,

    bodyMedium: _bodyText2,

    bodySmall: _bodyText3
  );
  
  static const TextStyle _headline1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _headline2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _headline3 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _subtitle1 = TextStyle(
    fontSize: 16.0
  );

  static const TextStyle _subtitle2 = TextStyle(
    fontSize: 14.0
  );

  static const TextStyle _subtitle3 = TextStyle(
    fontSize: 12.0
  );

  static const TextStyle _bodyText1 = TextStyle(
    fontSize: 16.0
  );

  static const TextStyle _bodyText2 = TextStyle(
    fontSize: 14.0
  );

  static const TextStyle _bodyText3 = TextStyle(
    fontSize: 12.0
  );

  static const TextStyle _button = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
    fontStyle: FontStyle.italic,
  );

  /*static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );*/

}