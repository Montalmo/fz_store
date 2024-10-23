import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';

class FZElevatedButtonThene {
  const FZElevatedButtonThene._();

  //*Light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: FZColors.white,
      backgroundColor: FZColors.buttonPrimary,
      disabledForegroundColor: FZColors.darkGrey,
      disabledBackgroundColor: FZColors.buttonDisabled,
      side: const BorderSide(color: FZColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      textStyle: const TextStyle(
          fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
    ),
  );

  //*Dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: FZColors.white,
      backgroundColor: FZColors.buttonPrimary,
      disabledForegroundColor: FZColors.darkGrey,
      disabledBackgroundColor: FZColors.buttonDisabled,
      side: const BorderSide(
        color: FZColors.buttonPrimary,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      textStyle: const TextStyle(
          fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
    ),
  );
}
