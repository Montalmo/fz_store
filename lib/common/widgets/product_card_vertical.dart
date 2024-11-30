import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/image_strings.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/common/widgets/price_text.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/common/widgets/rounded_image.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/utils/router/router.dart';
import 'package:go_router/go_router.dart';

class FZproductCardVertical extends StatelessWidget {
  const FZproductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        log('card is tepped');
        context.pushNamed(FZRouter.productDetailSreenRouteName);
      },
      child: Container(
        width: (width - 44) / 2,
        height: width - 64,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(FZSizes.s16),
          color: dark ? FZColors.literDark : FZColors.light,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(FZSizes.s16),
                color: dark ? FZColors.literDark : FZColors.light,
              ),
              child: Stack(
                children: [
                  const FZRoundedImage(
                    imagePath: FZImages.productNike02,
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(FZSizes.s8),
                        color: FZColors.secondary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          '25%',
                          style: context.textTheme.bodySmall!
                              .apply(color: FZColors.dark),
                        ),
                      ),
                    ),
                  ),
                  //! add stetes to icon button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: FZColors.dark,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(FZSizes.s12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Black Nike Air Shoes',
                    style: context.textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: FZSizes.s4,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Nike',
                        style: context.textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        width: FZSizes.s4,
                      ),
                      const Icon(
                        Icons.verified,
                        color: FZColors.primary,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: FZSizes.s12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FZPriceTextWidget(
                    price: '35.99',
                    oldPrice: '69.30',
                    isSale: true,
                  ),
                  GestureDetector(
                    onTap: () {
                      log('+ is tepped');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: dark ? FZColors.primary : FZColors.dark,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(FZSizes.s16),
                          bottomRight: Radius.circular(FZSizes.s16),
                        ),
                      ),
                      child: const SizedBox(
                        width: FZSizes.s40,
                        height: FZSizes.s40,
                        child: Icon(
                          Icons.add,
                          color: FZColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
