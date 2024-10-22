import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';

class FZLoginForm extends StatelessWidget {
  const FZLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(
          top: FZSizes.s24,
          bottom: FZSizes.s24,
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
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(FZText.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
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
                onPressed: () {},
                child: const Text(FZText.signIn),
              ),
            ),
            const SizedBox(
              height: FZSizes.spaceBtwInputFields,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(FZText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}