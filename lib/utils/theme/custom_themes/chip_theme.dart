import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';

class FZChipTheme {
  const FZChipTheme._();

  //* Light Theme
  static final ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(.4),
    labelStyle: const TextStyle(color: FZColors.dark),
    selectedColor: FZColors.primary,
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: FZColors.white,
    side: const BorderSide(color: FZColors.grey),
  );

  //* Light Theme
  static const ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: FZColors.darkGrey,
    labelStyle: TextStyle(color: FZColors.white),
    selectedColor: FZColors.primary,
    padding: EdgeInsets.all(12.0),
    checkmarkColor: FZColors.white,
    side: BorderSide(color: FZColors.dark),
  );
}
