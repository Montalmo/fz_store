import 'package:flutter/material.dart';
import 'package:fz_store/common/domain/success_screen_data.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/common/styles/spacing_styles.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:go_router/go_router.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key, required this.screenData,
    
  });

  final SuccessScreenData screenData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FZSpacingStyle.paddingWithAppBarHight,
          child: Column(
            children: [
              Image(
                width: FZHelperFuctions.screenWidth(context) * .8,
                height: FZHelperFuctions.screenHight(context) * .4,
                image: AssetImage(screenData.imagePath),
              ),
              Text(
                screenData.title,
                style: context.theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FZSizes.defaultBwnItems,
              ),
              Text(
                screenData.subTitle,
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
                    context.pushReplacementNamed(screenData.routePath);
                  },
                  child: const Text('OK'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
