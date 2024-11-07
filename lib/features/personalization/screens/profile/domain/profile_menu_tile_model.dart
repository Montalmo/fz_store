
import 'package:flutter/material.dart';

class FZProfileMenuTile {
  final String lable, value;
  final VoidCallback onPress;
  final IconData? icon;

  FZProfileMenuTile({
    required this.lable,
    required this.value,
    required this.onPress,
    this.icon,
  });
}
