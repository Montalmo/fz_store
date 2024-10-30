import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/shop/controllers/promo_banners_data_controller.dart';
import 'package:fz_store/features/shop/screens/home/presentation/widgets/promo_slider.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/common/widgets/section_heading.dart';
import 'package:fz_store/common/widgets/search_container.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';
import 'package:fz_store/common/widgets/primary_header_container.dart';
import 'package:fz_store/features/shop/screens/home/presentation/widgets/home_appbar.dart';
import 'package:fz_store/features/shop/screens/home/presentation/widgets/home_catigories.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final promoBunnersList = ref.watch(promoBannrsDataControllerProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FZCurvedEdgesWidget(
              child: FZPrimaryHeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FZHomeAppBar(),
                    SizedBox(
                      height: FZSizes.s12,
                    ),
                    FZSearchContainer(
                      text: FZText.searchInStore,
                      showBackground: true,
                      showBorder: false,
                      icon: Icons.search_outlined,
                    ),
                    SizedBox(
                      height: FZSizes.s16,
                    ),
                    Column(
                      children: [
                        FSSectionheading(
                          title: FZText.popularCategories,
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: FZSizes.s8,
                        ),
                        FZHomeCategories(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            FZPromoSlider(
              banners: promoBunnersList,
            ),
          ],
        ),
      ),
    );
  }
}
