import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';

class FZTextButtonTheme {
  const FZTextButtonTheme._();

  static final lightTextButton = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(FZColors.primary),
    ),
  );

  static final darkTextButton = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(FZColors.primary),
    ),
  );
}
