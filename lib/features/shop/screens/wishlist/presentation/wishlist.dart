import 'package:flutter/material.dart';

import 'package:fz_store/common/widgets/appbar.dart';
import 'package:fz_store/common/widgets/grid_layout.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/common/widgets/product_card_vertical.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FZAppBar(
        title: Text(
          'Wishlist',
          style: context.theme.textTheme.headlineMedium,
        ),
        showBackArrow: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: FZGridLayout(
          itemCount: 4,
          mainAxisExtent: 323,
          itemBuider: (_, index) => const FZproductCardVertical(),
        ),
      ),
    );
  }
}
