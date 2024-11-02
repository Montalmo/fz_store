import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/features/shop/screens/store/presentation/widgets/brand_card.dart';
import 'package:fz_store/features/shop/screens/store/presentation/widgets/pic_for_brand_showcase.dart';

class FZBrandShowcase extends StatelessWidget {
  const FZBrandShowcase({
    super.key,
    required this.brandName,
    required this.producrPcs,
    required this.brandLogoImagePath,
    required this.productList,
    required this.onBrandPressed,
    required this.onProductPressed,
  });

  final String brandName, brandLogoImagePath;
  final int producrPcs;
  final List<String> productList;
  final VoidCallback onBrandPressed, onProductPressed;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: FZSizes.s16),
      child: Container(
        margin: const EdgeInsets.only(bottom: FZSizes.s16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(FZSizes.s16),
          border: Border.all(color: dark ? FZColors.darkerGrey : FZColors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FZBrandCard(
                onPressed: onBrandPressed,
                isBordered: false,
                imagePath: FZImages.addidasLogoDark,
                brandName: brandName,
                producrPcs: producrPcs),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: FZSizes.s12,
                bottom: FZSizes.s12,
              ),
              child: Row(
                children: productList
                    .map(
                      (element) =>
                          ProductPicForBrandShowcase(imagePath: element),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
