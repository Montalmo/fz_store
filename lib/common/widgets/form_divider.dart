import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZFormDivider extends StatelessWidget {
  const FZFormDivider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: FZSizes.s24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: !dark ? FZColors.darkGrey : FZColors.grey,
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
              color: !dark ? FZColors.darkGrey : FZColors.grey,
              thickness: .5,
            ),
          ),
        ],
      ),
    );
  }
}
