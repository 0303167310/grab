import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray300,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray400,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 34.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 28.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray400,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 22.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray800,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFEDAE10),
    primaryContainer: Color(0XFFB7083C),
    secondaryContainer: Color(0X7EEDAE10),

    // Error colors
    errorContainer: Color(0XFF717171),
    onErrorContainer: Color(0XFF121212),

    // On colors(text colors)
    onPrimary: Color(0XFF231C1C),
    onPrimaryContainer: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber100 => Color(0XFFFFF1B1);
  Color get amber300 => Color(0XFFF6CD56);
  Color get amber500 => Color(0XFFF4BD05);
  Color get amber50001 => Color(0XFFF3BD06);
  Color get amberA400 => Color(0XFFFEC400);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD0D0D0);
  Color get blueGray10033 => Color(0X33D9D9D9);
  Color get blueGray400 => Color(0XFF898989);

  // Gray
  Color get gray100 => Color(0XFFF7F7F7);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFEBEBEB);
  Color get gray20001 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFDDDDDD);
  Color get gray400 => Color(0XFFB8B8B8);
  Color get gray500 => Color(0XFFA0A0A0);
  Color get gray50001 => Color(0XFFA5A5A5);
  Color get gray700 => Color(0XFF5A5A5A);
  Color get gray800 => Color(0XFF414141);
  Color get gray900 => Color(0XFF2A2A2A);
  Color get gray90001 => Color(0XFF262626);

  // Green
  Color get green100 => Color(0XFFC8E6C9);
  Color get green500 => Color(0XFF4CAF51);
  Color get green600 => Color(0XFF34A853);
  Color get green60001 => Color(0XFF43A048);

  // Indigo
  Color get indigo100 => Color(0XFFC2CCDE);
  Color get indigo900 => Color(0XFF27346A);
  Color get indigoA700 => Color(0XFF304FFE);

  // Lime
  Color get lime900 => Color(0XFF643800);

  // Purple
  Color get purple800 => Color(0XFF5F259F);

  // Red
  Color get red400 => Color(0XFFEF5350);
  Color get red500 => Color(0XFFF44336);
  Color get red700 => Color(0XFFD32F2F);
  Color get redA700 => Color(0XFFFF0000);

  // Teal
  Color get teal800 => Color(0XFF006A4D);

  // Yellow
  Color get yellow300 => Color(0XFFFFE672);
  Color get yellow50 => Color(0XFFFFFDE7);
  Color get yellow5001 => Color(0XFFFFFAE6);
  Color get yellow5082 => Color(0X82FFFBE7);
  Color get yellow700 => Color(0XFFFBC02D);
  Color get yellow800 => Color(0XFFF79E1B);
  Color get yellowA200 => Color(0XFFFFFF00);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
