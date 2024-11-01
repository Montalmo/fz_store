import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FZPriceTextWidget extends StatelessWidget {
  const FZPriceTextWidget({
    super.key,
    this.currenceSign = '\$',
    this.oldPrice = '',
    this.isSale = false,
    required this.price,
  });

  final String currenceSign, price, oldPrice;
  final bool isSale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$currenceSign $price',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: isSale
              ? context.textTheme.headlineSmall
              : context.textTheme.headlineMedium,
        ),
        const SizedBox(
          width: FZSizes.s8,
        ),
        if (isSale)
          Text(
            oldPrice,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodySmall!
                .copyWith(decoration: TextDecoration.lineThrough),
          ),
      ],
    );
  }
}
