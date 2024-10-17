import 'package:flutter/material.dart';
import 'package:fz_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/outlined_button.dart';
import 'package:fz_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:fz_store/utils/theme/custom_themes/text_theme.dart';

class FZAppTheme {
  const FZAppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Gillroy',
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    chipTheme: FZChipTheme.lightChipTheme,
    textTheme: FZTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: FZAppBarTheme.lightAppBarTheme,
    checkboxTheme: FZCheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: FZOutlinedButton.lightOutlinedButton,
    bottomSheetTheme: FZBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: FZElevatedButtonThene.lightElevatedButtonTheme,
    inputDecorationTheme: FZTextFormFieldTheme.lightInputDecorationTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Gillroy',
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    chipTheme: FZChipTheme.darkChipTheme,
    textTheme: FZTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: FZAppBarTheme.darkAppBarTheme,
    checkboxTheme: FZCheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: FZOutlinedButton.darkOutlinedButton,
    bottomSheetTheme: FZBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: FZElevatedButtonThene.darkElevatedButtonTheme,
    inputDecorationTheme: FZTextFormFieldTheme.darkInputDecorationTheme,
  );
}
