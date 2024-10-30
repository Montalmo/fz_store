
import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/rounded_image.dart';

class FZBannerElement extends StatelessWidget {
  const FZBannerElement({
    super.key,
    required this.imagePath, required this.onPressed,
  });

  final String imagePath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: FZRoundedImage(imagePath: imagePath),
    );
  }
}
