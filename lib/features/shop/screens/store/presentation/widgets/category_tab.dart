import 'dart:developer';
import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/common/widgets/grid_layout.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/common/widgets/section_heading.dart';
import 'package:fz_store/common/widgets/product_card_vertical.dart';
import 'package:fz_store/features/shop/screens/store/presentation/widgets/brand_showcase.dart';

class FZCategoryTab extends StatelessWidget {
  const FZCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              const SizedBox(
                height: FZSizes.s16,
              ),
              FZBrandShowcase(
                onBrandPressed: () => log('BrandShowcase was tapped'),
                onProductPressed: () => log('product was tapped'),
                brandName: 'Adidas',
                brandLogoImagePath: FZImages.addidasLogoDark,
                producrPcs: 66,
                productList: const [
                  'assets/images/products/nike_02.png',
                  'assets/images/products/nike_03.png',
                  'assets/images/products/nike_04.png',
                ],
              ),

              /// Products
              Padding(
                padding: EdgeInsets.symmetric(horizontal: FZSizes.s16),
                child: const FZSectionHeading(
                  showActionButton: true,
                  isHome: false,
                  title: 'You might like',
                  buttonTitle: 'View all',
                ),
              ),
              FZGridLayout(
                itemCount: 6,
                mainAxisExtent: width - 64,
                itemBuider: (_, index) => const FZproductCardVertical(),
              ),
            ],
          ),
        ]);
  }
}
