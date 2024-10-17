import 'package:flutter/material.dart';

class FZChipTheme {
  const FZChipTheme._();

  //* Light Theme
  static final ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: Colors.white,
  );

  //* Light Theme
  static const ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.all(12.0),
    checkmarkColor: Colors.white,
  );
}
