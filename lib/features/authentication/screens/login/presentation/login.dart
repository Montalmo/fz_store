import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fz_store/features/authentication/screens/login/data/login_socilabuttons_list.dart';
import 'package:fz_store/features/authentication/screens/login/presentation/widgets/login_form.dart';
import 'package:fz_store/features/authentication/screens/login/presentation/widgets/login_header.dart';
import 'package:fz_store/common/widgets/form_divider.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/common/styles/spacing_styles.dart';
import 'package:fz_store/common/widgets/social_buttons.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/utils/router/router.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = FZHelperFuctions.isDarkMode(context);
    final socialButtonsList = ref.watch(loginSocialButtonsListProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FZSpacingStyle.paddingWithAppBarHight,
          child: Column(
            children: [
              FZLoginHeader(dark: dark),
              FZLoginForm(
                createAccountOnPressed: () {
                  context.pushNamed(FZRouter.signUpSreenRouteName);
                },
                signInOnPressed: () {},
              ),
              const FZFormDivider(
                title: FZText.orSignInWith,
              ),
              FZSocialButtons(
                buttonsList: socialButtonsList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
