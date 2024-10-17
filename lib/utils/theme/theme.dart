import 'package:flutter/material.dart';
import 'package:fz_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/outlined_button.dart';
import 'package:fz_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/text_theme.dart';

class AZAppTheme {
  const AZAppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Gillroy',
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    chipTheme: AZChipTheme.lightChipTheme,
    textTheme: AZTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AZAppBarTheme.lightAppBarTheme,
    checkboxTheme: AZCheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: AZOutlinedButton.lightOutlinedButton,
    bottomSheetTheme: AZBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AZElevatedButtonThene.lightElevatedButtonTheme,
    inputDecorationTheme: AZTextFormFieldTheme.lightInputDecorationTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Gillroy',
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    chipTheme: AZChipTheme.darkChipTheme,
    textTheme: AZTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AZAppBarTheme.darkAppBarTheme,
    checkboxTheme: AZCheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: AZOutlinedButton.darkOutlinedButton,
    bottomSheetTheme: AZBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AZElevatedButtonThene.darkElevatedButtonTheme,
    inputDecorationTheme: AZTextFormFieldTheme.darkInputDecorationTheme,
  );
}
