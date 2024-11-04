import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/circular_container.dart';
import 'package:fz_store/utils/constants/colors.dart';

class FZPrimaryHeaderContainer extends StatelessWidget {
  const FZPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FZColors.primary,
      child: SizedBox(
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: FZCircularContainer(
                backgroundColor: FZColors.light.withOpacity(.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: FZCircularContainer(
                backgroundColor: FZColors.light.withOpacity(.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
