import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/router/router.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(FZSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              FZText.forgetPasswordTitle,
              style: context.theme.textTheme.headlineMedium,
            ),
            const SizedBox(
              height: FZSizes.spaceBtwInputFieldsS,
            ),
            Text(
              FZText.forgetPasswordSubTitle,
              style: context.theme.textTheme.labelMedium,
            ),
            const SizedBox(
              height: FZSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: FZText.email,
                prefixIcon: Icon(Icons.arrow_circle_right_outlined),
              ),
            ),
            const SizedBox(
              height: FZSizes.s24,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.pushReplacementNamed(
                      FZRouter.resetPasswordSreenRouteName);
                },
                child: const Text(FZText.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
