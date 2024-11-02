import 'package:flutter/material.dart';
import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/device/device_utility.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';

class FZTabBar extends StatelessWidget implements PreferredSizeWidget {
  const FZTabBar({super.key, required this.tabsList});

  final List<Tab> tabsList;

  @override
  Widget build(BuildContext context) {
    final dark = FZHelperFuctions.isDarkMode(context);
    return Material(
      color: dark ? FZColors.dark : FZColors.white,
      child: TabBar(
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: FZColors.primary,
        unselectedLabelColor: FZColors.darkGrey,
        labelColor: dark ? FZColors.light : FZColors.dark,
        tabs: tabsList,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(
        FZDeviceUtils.getAppBarHighth(),
      );
}
