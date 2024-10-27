import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/image_strings.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/common/widgets/section_heading.dart';
import 'package:fz_store/common/widgets/search_container.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';
import 'package:fz_store/common/widgets/primary_header_container.dart';
import 'package:fz_store/features/shop/screens/home/presentation/widgets/home_appbar.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FZCurvedEdgesWidget(
              child: FZPrimaryHeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FZHomeAppBar(),
                    const SizedBox(
                      height: FZSizes.s12,
                    ),
                    const FZSearchContainer(
                      text: FZText.searchInStore,
                      showBackground: true,
                      showBorder: false,
                      icon: Icons.search_outlined,
                    ),
                    const SizedBox(
                      height: FZSizes.s16,
                    ),
                    Column(
                      children: [
                        const FSSectionheading(
                          title: FZText.popularCategories,
                          showActionButton: false,
                        ),
                        const SizedBox(
                          height: FZSizes.s8,
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return FZVerticalImageText(
                                imagePath:
                                    'assets/icons/sport_category_icon.svg',
                                title: 'Sport',
                                onPressed: () {
                                  log('Click ok!');
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FZVerticalImageText extends StatelessWidget {
  const FZVerticalImageText({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onPressed,
    this.textColor = FZColors.light,
    this.backgroundColor = FZColors.light,
  });

  final String imagePath, title;
  final Color textColor, backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: FZSizes.s8),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(FZSizes.s4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: dark ? FZColors.dark : FZColors.light,
              ),
              child: Center(
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                      dark ? FZColors.darkGrey : FZColors.dark,
                      BlendMode.srcIn),
                ),
              ),
            ),
            const SizedBox(
              height: FZSizes.s4,
            ),
            SizedBox(
              width: 55.0,
              child: Text(
                title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: context.textTheme.labelMedium!.apply(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
