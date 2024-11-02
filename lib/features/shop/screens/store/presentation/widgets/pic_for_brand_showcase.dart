import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class ProductPicForBrandShowcase extends StatelessWidget {
  const ProductPicForBrandShowcase({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Expanded(
      child: Container(
        height: 96,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(FZSizes.s16),
            color: dark ? FZColors.darkerGrey : FZColors.light),
        margin: const EdgeInsets.only(
          right: FZSizes.s12,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            FZSizes.s16,
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
