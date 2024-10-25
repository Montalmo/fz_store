import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/utils/router/router.dart';
import 'package:go_router/go_router.dart';

class FZLoginForm extends StatelessWidget {
  const FZLoginForm({
    super.key,
    required this.signInOnPressed,
    required this.createAccountOnPressed,
  });

  final VoidCallback signInOnPressed, createAccountOnPressed;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(
          top: FZSizes.s24,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: FZText.email,
              ),
            ),
            const SizedBox(
              height: FZSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                labelText: FZText.password,
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
            ),
            const SizedBox(
              height: FZSizes.s8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value) {})),
                    const SizedBox(
                      width: FZSizes.s8,
                    ),
                    const Text(FZText.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    context.pushNamed(FZRouter.forgotPasswordSreenRouteName);
                  },
                  child: const Text(FZText.forgetPassword),
                ),
              ],
            ),
            const SizedBox(
              height: FZSizes.s8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: signInOnPressed,
                child: const Text(FZText.signIn),
              ),
            ),
            const SizedBox(
              height: FZSizes.spaceBtwInputFields,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: createAccountOnPressed,
                child: const Text(FZText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
