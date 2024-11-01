import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZCartIconWithCounter extends StatelessWidget {
  const FZCartIconWithCounter({
    super.key,
    required this.counter,
    required this.color,
    required this.backgroundColor,
    required this.onPressed,
  });

  final String counter;
  final Color color, backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return Stack(children: [
      IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: dark ? FZColors.light : FZColors.dark,
        ),
      ),
      Positioned(
        right: 0,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: backgroundColor,
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
