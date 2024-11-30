import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/choice_chip.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/common/widgets/section_heading.dart';

class FZProductAttributes extends StatelessWidget {
  const FZProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: FZSizes.s12),
          padding: const EdgeInsets.symmetric(
              vertical: FZSizes.s8, horizontal: FZSizes.s16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(FZSizes.s16),
            color: dark ? FZColors.darkerGrey : FZColors.grey,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const FZSectionHeading(
                      showActionButton: false,
                      title: 'Variations',
                      isHome: false),
                  const SizedBox(
                    width: FZSizes.s16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Price: ',
                            style: context.theme.textTheme.bodySmall,
                          ),
                          Text(
                            '\$ 25',
                            style: context.theme.textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: FZSizes.s8,
                          ),
                          Text(
                            '\$ 175',
                            style: context.theme.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Stock: ',
                            style: context.theme.textTheme.bodySmall,
                          ),
                          Text(
                            'In Stock',
                            style: context.theme.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: FZSizes.s4),
                child: Text(
                  'This is the Description of the Product and it can go upto 4 lines.',
                  maxLines: 4,
                  style: context.theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            const FZSectionHeading(
              showActionButton: false,
              title: 'Colors',
              isHome: false,
            ),
            Wrap(
              children: [
                FZChioceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                FZChioceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                FZChioceChip(
                  text: 'Yellow',
                  selected: true,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            const FZSectionHeading(
              showActionButton: false,
              title: 'Size',
              isHome: false,
            ),
            Wrap(
              children: [
                FZChioceChip(
                  text: 'EU 24',
                  selected: true,
                  onSelected: (value) {},
                ),
                FZChioceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                FZChioceChip(
                  text: 'Eu 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
