import 'package:flutter/widgets.dart';

class FZPromoBanner {
  FZPromoBanner({
    required this.imagePath,
    required this.onPressed,
  });

  final String imagePath;
  final VoidCallback onPressed;

  FZPromoBanner copyWith({
    String? imagePath,
    VoidCallback? onPressed,
  }) {
    return FZPromoBanner(
      imagePath: imagePath ?? this.imagePath,
      onPressed: onPressed ?? this.onPressed,
    );
  }
}
