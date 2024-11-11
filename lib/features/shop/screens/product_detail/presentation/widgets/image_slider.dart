import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/rounded_image.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/constants/sizes.dart';

class FZImageSlider extends StatelessWidget {
  const FZImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SizedBox(
        width: FZSizes.s16,
      ),
      itemBuilder: (_, index) => const SizedBox(
        width: 80,
        child: FZRoundedImage(
            imagePath: FZImages.productNike02),
      ),
    );
  }
}