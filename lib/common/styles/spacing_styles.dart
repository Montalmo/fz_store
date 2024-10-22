import 'package:flutter/widgets.dart';

import 'package:fz_store/utils/constants/sizes.dart';

class FZSpacingStyle {
  const FZSpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppBarHight = EdgeInsets.only(
      top: FZSizes.appBarHeight,
      left: FZSizes.defaultSpace,
      right: FZSizes.defaultSpace,
      bottom: FZSizes.defaultSpace);
}
