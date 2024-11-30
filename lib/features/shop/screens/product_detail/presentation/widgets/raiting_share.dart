import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FZRaitingShare extends StatelessWidget {
  const FZRaitingShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_border_rounded,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: FZSizes.s8,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0 ',
                      style: context.theme.textTheme.bodyLarge),
                  TextSpan(
                      text: '(199)',
                      style: context.theme.textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share_outlined,
            size: FZSizes.s24,
          ),
        ),
      ],
    );
  }
}