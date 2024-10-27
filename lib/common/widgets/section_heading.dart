import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FSSectionheading extends StatelessWidget {
  const FSSectionheading({
    super.key,
    this.textColor = FZColors.light,
    required this.showActionButton,
    this.onPressed,
    required this.title,
    this.buttonTitle,
  });

  final Color? textColor;
  final bool showActionButton;
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
            style:
                context.theme.textTheme.headlineSmall!.apply(color: textColor),
          ),
          if (showActionButton)
            TextButton(
              onPressed: () {},
              child: Text(
                buttonTitle!,
                style:
                    context.theme.textTheme.bodyMedium!.apply(color: textColor),
              ),
            ),
        ],
      ),
    );
  }
}
