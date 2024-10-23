import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/authentication/screens/signup/data/signup_socilabuttons_list.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/features/authentication/screens/signup/widgets/signup_form.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = FZHelperFuctions.isDarkMode(context);
    final socialButtonsList = ref.watch(signUpSocialButtonsListProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FZSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FZText.signUpTitle,
                style: context.theme.textTheme.headlineMedium,
              ),
              const SizedBox(
                height: FZSizes.s24,
              ),
              FZSignupForm(dark: dark, socialButtonsList: socialButtonsList),
            ],
          ),
        ),
      ),
    );
  }
}
