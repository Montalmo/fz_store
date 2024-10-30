import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/sizes.dart';

class FZGridLayout extends StatelessWidget {
  const FZGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuider,
  });

  final int itemCount;

  final Widget? Function(BuildContext, int) itemBuider;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: const EdgeInsets.all(FZSizes.s16),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: FZSizes.s12,
        crossAxisSpacing: FZSizes.s12,
        childAspectRatio: ((width - 44) / 2) / (width - 64),
      ),
      itemBuilder: itemBuider,
    );
  }
}
