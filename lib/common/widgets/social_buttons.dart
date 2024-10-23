import 'package:flutter/material.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttonsList,
    );
  }
}
