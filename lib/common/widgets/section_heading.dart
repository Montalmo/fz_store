import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
class FSSectionHeading extends StatelessWidget {
  const FSSectionHeading({
    super.key,
    this.textColor = FZColors.light,
    required this.showActionButton,
    this.onPressed,
    required this.title,
    this.buttonTitle,
    required this.isHome,
  });

  final Color? textColor;
  final bool showActionButton, isHome;
  final VoidCallback? onPressed;
  final String title;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: FZSizes.s16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: isHome
                ? context.theme.textTheme.headlineSmall!.apply(color: textColor)
                : context.theme.textTheme.headlineSmall,
          ),
          if (showActionButton)
            TextButton(
              onPressed: () {},
              child: Text(
                buttonTitle!,
                style: isHome
                    ? context.theme.textTheme.headlineSmall!
                        .apply(color: textColor)
                    : context.theme.textTheme.bodyMedium,
              ),
            ),
        ],
      ),
    );
  }
}
