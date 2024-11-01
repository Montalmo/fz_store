import 'package:flutter/material.dart';

import 'package:fz_store/common/widgets/appbar.dart';
import 'package:fz_store/common/widgets/cart_icon_with_counter.dart';
import 'package:fz_store/common/widgets/grid_layout.dart';
import 'package:fz_store/common/widgets/search_container.dart';
import 'package:fz_store/common/widgets/section_heading.dart';
import 'package:fz_store/features/shop/screens/store/presentation/widgets/brand_with_products.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Scaffold(
      appBar: FZAppBar(
        title: Text(
          'Store',
          style: context.theme.textTheme.headlineMedium,
        ),
        showBackArrow: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: FZCartIconWithCounter(
              counter: '9',
              onPressed: () {},
              color: FZColors.light,
              backgroundColor: FZColors.primary,
            ),
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: dark ? FZColors.dark : FZColors.white,
              expandedHeight: 380,
              automaticallyImplyLeading: false,
              flexibleSpace: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const SizedBox(
                    height: FZSizes.s12,
                  ),
                  const FZSearchContainer(
                    text: 'Search in store',
                    showBackground: false,
                    showBorder: true,
                    icon: Icons.search_outlined,
                  ),
                  const SizedBox(
                    height: FZSizes.s12,
                  ),
                  const FSSectionHeading(
                    showActionButton: true,
                    isHome: false,
                    title: 'Feature brands',
                    buttonTitle: 'View all',
                  ),
                  FZGridLayout(
                    itemCount: 4,
                    mainAxisExtent: 72,
                    itemBuider: (_, index) {
                      return FZBrandWithProducts(
                        onPressed: () {},
                        imagePath: FZImages.addidasLogoDark,
                        brandName: 'Nike',
                        producrPcs: 296,
                      );
                    },
                  ),
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
