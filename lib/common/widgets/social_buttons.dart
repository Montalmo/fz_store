import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/common/widgets/social_button.dart';


class FZSocialButtons extends StatelessWidget {
  const FZSocialButtons({
    super.key,
    required this.dark,
    required this.buttonsList,
  });

  final List<FZSocialButton> buttonsList;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: FZSizes.s16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buttonsList,
      ),
    );
  }
}
