import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZBrandWithProducts extends StatelessWidget {
  const FZBrandWithProducts({
    super.key,
    required this.onPressed,
    required this.imagePath,
    required this.brandName,
    required this.producrPcs,
  });

  final VoidCallback onPressed;
  final String imagePath, brandName;
  final int producrPcs;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(FZSizes.s16),
          border: Border.all(color: FZColors.grey),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(FZSizes.s16),
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage(imagePath),
                  color: dark ? FZColors.light : FZColors.dark,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          brandName,
                          style: context.textTheme.titleLarge,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      const SizedBox(
                        width: FZSizes.s4,
                      ),
                      const Icon(
                        Icons.verified,
                        color: FZColors.primary,
                        size: 16,
                      ),
                    ],
                  ),
                  Text(
                    '$producrPcs pcs',
                    style: context.theme.textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
