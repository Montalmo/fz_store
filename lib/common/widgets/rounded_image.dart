import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';

class FZRoundedImage extends StatelessWidget {
  const FZRoundedImage({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(FZSizes.s16)),
      child: Image(
        image: AssetImage(imagePath),
        fit: BoxFit.contain,
      ),
    );
  }
}
