import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/social_button.dart';
import 'package:fz_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:fz_store/features/authentication/screens/login/widgets/login_header.dart';


import 'package:fz_store/common/widgets/form_divider.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/common/styles/spacing_styles.dart';
import 'package:fz_store/common/widgets/social_buttons.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    final List<FZSocialButton> socialButtonsList = [
      FZSocialButton(
          dark: dark,
          lightIconPath: FZImages.lightApple,
          darkIconPath: FZImages.darkApple,
          onPressed: () {}),
      FZSocialButton(
          dark: dark,
          lightIconPath: FZImages.lightFacebook,
          darkIconPath: FZImages.lightFacebook,
          onPressed: () {}),
      FZSocialButton(
          dark: dark,
          lightIconPath: FZImages.lightGoogle,
          darkIconPath: FZImages.lightGoogle,
          onPressed: () {}),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FZSpacingStyle.paddingWithAppBarHight,
          child: Column(
            children: [
              FZLoginHeader(dark: dark),
              const FZLoginForm(),
              FZFormDivider(
                dark: dark,
                title: FZText.orSignInWith,
              ),
              FZSocialButtons(
                dark: dark,
                buttonsList: socialButtonsList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
