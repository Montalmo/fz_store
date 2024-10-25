import 'package:flutter/material.dart';

import 'package:fz_store/common/domain/success_screen_data.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/utils/router/router.dart';
import 'package:go_router/go_router.dart';

class VrifyEmailScreen extends StatelessWidget {
  const VrifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pushReplacementNamed(FZRouter.loginSreenRouteName);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FZSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: FZHelperFuctions.screenWidth(context) * .8,
                height: FZHelperFuctions.screenHight(context) * .4,
                image: const AssetImage(FZImages.verifyEmailImage),
              ),
              Text(
                FZText.confirmEmailTitle,
                style: context.theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FZSizes.spaceBtwInputFieldsS,
              ),
              Text(
                'support_mail@product.com',
                style: context.theme.textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FZSizes.defaultBwnItems,
              ),
              Text(
                FZText.confirmEmailSubTitle,
                style: context.theme.textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FZSizes.s24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.goNamed(
                      FZRouter.successSreenRouteName,
                      extra: SuccessScreenData(
                        title: FZText.yourAccountCreatedTiltle,
                        subTitle: FZText.yourAccountCreatedSubTiltle,
                        imagePath: FZImages.accountCreatedImage,
                        routePath: FZRouter.loginSreenRouteName,
                      ),
                    );
                  },
                  child: const Text(FZText.fzContinue),
                ),
              ),
              const SizedBox(
                height: FZSizes.s16,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    FZText.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
