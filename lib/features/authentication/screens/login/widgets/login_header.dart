import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/utils/constants/image_strings.dart';

class FZLoginHeader extends StatelessWidget {
  const FZLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 80,
          image:
              AssetImage(!dark ? FZImages.darkAppLogo : FZImages.lightAppLogo),
        ),
        const SizedBox(
          height: FZSizes.defaultBwnSections,
        ),
        Text(
          FZText.loginTitle,
          style: context.textTheme.headlineMedium,
        ),
        const SizedBox(
          height: FZSizes.s8,
        ),
        Text(
          FZText.loginSubTitle,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
