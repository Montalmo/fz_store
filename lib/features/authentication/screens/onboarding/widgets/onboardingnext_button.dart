import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/device/device_utility.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
    required this.onPress,
    required this.onPageIndex,
  });

  final VoidCallback onPress;
  final int onPageIndex;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Positioned(
      right: FZSizes.defaultSpace,
      bottom: FZDeviceUtils.getBottomNavigationBarHigth(context),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: dark ? FZColors.primary : FZColors.black,
          ),
          shape: const CircleBorder(),
          backgroundColor: dark ? FZColors.primary : FZColors.black,
        ),
        child: onPageIndex != 2
            ? const Icon(Icons.arrow_right)
            : const Icon(Icons.power_settings_new),
      ),
    );
  }
}
