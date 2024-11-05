import 'package:flutter/material.dart';

class SettingMenuTile {
  final IconData icon;
  final String title, subTitle;
  final VoidCallback onPressed;

  SettingMenuTile({
    required this.icon,
    required this.subTitle,
    required this.title,
    required this.onPressed,
  });
}
