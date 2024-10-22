import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';

class FZOutlinedButton {
  const FZOutlinedButton._();

  //* Light Theme
  static final lightOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: FZColors.textPrimary,
      side: const BorderSide(color: FZColors.buttonSecondary),
      textStyle: const TextStyle(
          fontSize: 16.0,
          color: FZColors.textPrimary,
          fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14.0)),
    ),
  );

  //* dark Theme
  static final darkOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: FZColors.white,
      side: const BorderSide(
        color: FZColors.buttonSecondary,
      ),
      textStyle: const TextStyle(
          fontSize: 16.0, color: FZColors.white, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14.0)),
    ),
  );
}
