import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:fz_store/common/widgets/vertical_image_text.dart';

class FZHomeCategories extends StatelessWidget {
  const FZHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return FZVerticalImageText(
            imagePath: 'assets/icons/sport_category_icon.svg',
            title: 'Sport',
            onPressed: () {
              log('Click ok!');
            },
          );
        },
      ),
    );
  }
}
