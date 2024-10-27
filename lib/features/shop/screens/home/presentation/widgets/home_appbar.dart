import 'package:flutter/material.dart';

import 'package:fz_store/common/widgets/appbar.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/common/widgets/cart_icon_with_counter.dart';

class FZHomeAppBar extends StatelessWidget {
  const FZHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FZAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FZText.homeAppbarTitle,
            style: context.theme.textTheme.labelMedium!
                .apply(color: FZColors.grey),
          ),
          Text(
            FZText.homeAppbarSubTitle,
            style: context.theme.textTheme.headlineSmall!
                .apply(color: FZColors.grey),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
          ),
          child: FZCartIconWithCounter(
            counter: '9',
            onPressed: () {},
            color: FZColors.light,
          ),
        ),
      ],
    );
  }
}
