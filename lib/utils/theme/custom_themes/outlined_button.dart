import 'package:flutter/material.dart';

class FZOutlinedButton {
  const FZOutlinedButton._();

  //* Light Theme
  static final lightOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.black),
      textStyle: const TextStyle(
          fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14.0)),
    ),
  );

  //* dark Theme
  static final darkOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.black),
      textStyle: const TextStyle(
          fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14.0)),
    ),
  );
}
