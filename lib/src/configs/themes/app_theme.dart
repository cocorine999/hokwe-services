import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_3_7_0/src/configs/themes/styling.dart';

class AppTheme {
  AppTextStyle textStyle;

  final ThemeData theme;

  AppTheme._(this.theme, this.textStyle);

  static AppTheme of(BuildContext context) {
    final theme = Theme.of(context);
    print(theme.brightness);
    final textStyle = AppTextStyle.of(context);
    return AppTheme._(theme, textStyle);
  }

  ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Cormorant',
      primaryColor: Colors.blue,
      colorScheme: ColorScheme.light().copyWith(
        secondary: Colors.orange, // Example: secondary color
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.blue,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        // Example: light system overlays
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      textTheme: AppTextStyle.textTheme,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    colorScheme: ColorScheme.light().copyWith(
      secondary: Colors.amber, // Example: secondary color
    ),
    scaffoldBackgroundColor: Colors.grey[900],

    fontFamily: 'Cormorant',
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      systemOverlayStyle: SystemUiOverlayStyle.light, // Example: light system overlays
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        )
    ),
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 14.0,
        color: Colors.grey[300],
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.teal,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      filled: true,
      fillColor: Colors.grey[800],
    ),
  );
}
