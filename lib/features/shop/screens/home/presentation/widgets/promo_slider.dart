import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/common/widgets/rounded_image.dart';
import 'package:fz_store/common/widgets/circular_container.dart';
import 'package:fz_store/features/shop/controllers/promo_slider_controller.dart';
import 'package:fz_store/features/shop/screens/home/domain/promo_banner.dart';

class FZPromoSlider extends ConsumerWidget {
  const FZPromoSlider({
    super.key,
    required this.banners,
  });

  final List<FZPromoBanner> banners;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(promoSliderControllerProvider);

    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((banner) => FZRoundedImage(
                  imagePath: banner.imagePath, onPressed: banner.onPressed))
              .toList(),
          options: CarouselOptions(
            onPageChanged: (index, _) =>
                ref.read(promoSliderControllerProvider.notifier).state = index,
            viewportFraction: 1,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
          ),
        ),
        const SizedBox(
          height: FZSizes.s12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < banners.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: FZSizes.s4),
                child: FZCircularContainer(
                  width: 16,
                  height: 4,
                  backgroundColor:
                      controller == i ? FZColors.primary : FZColors.darkGrey,
                ),
              ),
          ],
        )
      ],
    );
  }
}
