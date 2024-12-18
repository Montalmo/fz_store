import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FZSectionHeading extends StatelessWidget {
  const FZSectionHeading({
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
    return Row(
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
                  ? context.theme.textTheme.headlineSmall
                  : context.theme.textTheme.bodyMedium!
                      .apply(color: FZColors.primary),
            ),
          ),
      ],
    );
  }
}
