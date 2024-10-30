import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZVerticalImageText extends StatelessWidget {
  const FZVerticalImageText({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onPressed,
    this.textColor = FZColors.light,
    this.backgroundColor = FZColors.light,
  });

  final String imagePath, title;
  final Color textColor, backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          left: FZSizes.s16,
        ),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(FZSizes.s4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: dark ? FZColors.dark : FZColors.light,
              ),
              child: Center(
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                      dark ? FZColors.light : FZColors.dark, BlendMode.srcIn),
                ),
              ),
            ),
            const SizedBox(
              height: FZSizes.s4,
            ),
            SizedBox(
              width: 55.0,
              child: Text(
                title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: context.textTheme.labelMedium!.apply(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
