import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FZCartIconWithCounter extends StatelessWidget {
  const FZCartIconWithCounter({
    super.key,
    required this.counter,
    required this.color,
    required this.onPressed,
  });

  final String counter;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.shopping_bag_outlined,
          color: FZColors.light,
        ),
      ),
      Positioned(
        right: 0,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: FZColors.dark.withOpacity(.75),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              counter,
              style: context.theme.textTheme.labelLarge!.apply(color: color),
            ),
          ),
        ),
      )
    ]);
  }
}
