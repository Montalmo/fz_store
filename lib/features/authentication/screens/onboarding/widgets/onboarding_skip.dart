import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/device/device_utility.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
    required this.onPress
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: FZDeviceUtils.getAppBarHighth(),
        right: FZSizes.defaultBwnItems,
        child: TextButton(
          child: Text(
            'Skip',
            style: context.theme.textTheme.bodyMedium!.copyWith(
              color: FZColors.primary,
            ),
          ),
          onPressed: onPress,
        ));
  }
}
