import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/sizes.dart';

class FZGridLayout extends StatelessWidget {
  const FZGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuider,
    required this.mainAxisExtent,
  });

  final int itemCount;
  final double mainAxisExtent;

  final Widget? Function(BuildContext, int) itemBuider;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: const EdgeInsets.all(FZSizes.s16),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: FZSizes.s12,
        crossAxisSpacing: FZSizes.s12,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuider,
    );
  }
}
