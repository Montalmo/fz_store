import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FZSignupForm extends StatelessWidget {
  const FZSignupForm({
    super.key, required this.createAccountOnPressed,
  });

  final VoidCallback createAccountOnPressed;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.face_outlined),
                    labelText: FZText.firstName,
                  ),
                ),
              ),
              const SizedBox(
                width: FZSizes.s8,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.face_outlined),
                    labelText: FZText.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: FZSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline),
              labelText: FZText.userName,
            ),
          ),
          const SizedBox(
            height: FZSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: FZText.email,
            ),
          ),
          const SizedBox(
            height: FZSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone_android),
              labelText: FZText.phoneNumber,
            ),
          ),
          const SizedBox(
            height: FZSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: FZText.password,
            ),
          ),
          const SizedBox(
            height: FZSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(
                width: FZSizes.s12,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${FZText.iAgreeTo} ',
                        style: context.theme.textTheme.bodySmall),
                    TextSpan(
                        text: '${FZText.privacyPolicy} ',
                        style: context.theme.textTheme.bodyMedium!.apply(
                          color: FZColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: FZColors.primary,
                        )),
                    TextSpan(
                        text: FZText.and,
                        style: context.theme.textTheme.bodySmall),
                    TextSpan(
                        text: ' ${FZText.termsOfUse} ',
                        style: context.theme.textTheme.bodyMedium!.apply(
                          color: FZColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: FZColors.primary,
                        )),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: FZSizes.s24,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: createAccountOnPressed,
              child: const Text(FZText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
