import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FZFormDivider extends StatelessWidget {
  const FZFormDivider({super.key, required this.dark, required this.title});

  final bool dark;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: dark ? FZColors.darkGrey : FZColors.grey,
            thickness: .5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: FZSizes.s8),
          child: Text(title.toUpperCase(),
              style: context.theme.textTheme.labelSmall),
        ),
        Expanded(
          child: Divider(
            color: dark ? FZColors.darkGrey : FZColors.grey,
            thickness: .5,
          ),
        ),
      ],
    );
  }
}
