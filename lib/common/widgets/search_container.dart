import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/device/device_utility.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZSearchContainer extends StatelessWidget {
  const FZSearchContainer({
    super.key,
    required this.text,
    this.icon,
    required this.showBackground,
    required this.showBorder,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: FZSizes.s16),
      child: Container(
        width: FZDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.symmetric(
            horizontal: FZSizes.s16, vertical: FZSizes.s8),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? FZColors.dark
                  : Colors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(FZSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: FZColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: dark ? FZColors.darkerGrey : FZColors.grey,
            ),
            const SizedBox(
              width: FZSizes.s8,
            ),
            Text(
              text,
              style: context.theme.textTheme.bodySmall!
                  .apply(color: FZColors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
