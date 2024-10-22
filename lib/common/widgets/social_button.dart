import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';

class FZSocialButton extends StatelessWidget {
  const FZSocialButton({
    super.key,
    required this.dark,
    required this.lightIconPath,
    required this.darkIconPath,
    required this.onPressed,
  });

  final bool dark;
  final String lightIconPath, darkIconPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: FZSizes.s8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: dark ? FZColors.darkGrey : FZColors.grey),
          borderRadius: BorderRadius.circular(100),
          color: dark ? Colors.transparent : FZColors.white,
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            dark ? darkIconPath : lightIconPath,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}