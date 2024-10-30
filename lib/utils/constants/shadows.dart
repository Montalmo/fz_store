import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';

class FZShadows {
  final verticalProductShadow = BoxShadow(
    color: FZColors.darkGrey.withOpacity(.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  final horizontalProductShadow = BoxShadow(
    color: FZColors.darkGrey.withOpacity(.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
