import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/circular_container.dart';
import 'package:fz_store/common/widgets/price_text.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZProductMeta extends StatelessWidget {
  const FZProductMeta({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price ans Sale Price
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(FZSizes.s8),
                color: FZColors.secondary,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  '25%',
                  style:
                      context.textTheme.bodySmall!.apply(color: FZColors.dark),
                ),
              ),
            ),
            const SizedBox(width: FZSizes.s16),
            Text(
              '\$ 250',
              style: context.theme.textTheme.titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: FZSizes.s12),
            FZPriceTextWidget(
              price: '175',
            ),
          ],
        ),
        const SizedBox(
          height: FZSizes.s12,
        ),

        /// Title
        Text(
          'Black Nike Air Shoes',
          style: context.textTheme.labelLarge,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: FZSizes.s8,
        ),

        /// Stack Status
        Row(
          children: [
            Text(
              'Status: ',
              style: context.textTheme.labelMedium!
                  .apply(color: FZColors.darkGrey),
            ),
            const SizedBox(
              width: FZSizes.s8,
            ),
            Text(
              'In Stock',
              style: context.theme.textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: FZSizes.s8,
        ),

        ///  Brand
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FZCircularContainer(
              width: 24,
              height: 24,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                FZImages.addidasLogoDark,
                color: dark ? FZColors.light : FZColors.dark,
              ),
            ),
            const SizedBox(
              width: FZSizes.s8,
            ),
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
    );
  }
}
