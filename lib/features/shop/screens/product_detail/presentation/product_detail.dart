import 'package:flutter/material.dart';
import 'package:fz_store/features/shop/screens/product_detail/presentation/widgets/product_attributes.dart';
import 'package:fz_store/features/shop/screens/product_detail/presentation/widgets/product_meta.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/common/widgets/appbar.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';
import 'package:fz_store/features/shop/screens/product_detail/presentation/widgets/image_slider.dart';
import 'package:fz_store/features/shop/screens/product_detail/presentation/widgets/raiting_share.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FZCurvedEdgesWidget(
              child: Container(
                color: dark ? FZColors.dark : FZColors.light,
                child: Stack(
                  children: [
                    Image.asset(FZImages.productNike01),
                    const Positioned(
                      right: 0,
                      bottom: 32,
                      left: 16,
                      child: SizedBox(
                        height: 80,
                        child: FZImageSlider(),
                      ),
                    ),
                    FZAppBar(
                      showBackArrow: true,
                      alwaysDark: true,
                      actions: [
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            color: FZColors.dark,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: FZSizes.s16),
              child: Column(
                children: [
                  FZRaitingShare(),
                  FZProductMeta(),
                  FZProductAttributes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
