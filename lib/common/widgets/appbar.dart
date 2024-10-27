import 'package:flutter/material.dart';

import 'package:fz_store/utils/device/device_utility.dart';
import 'package:go_router/go_router.dart';

class FZAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FZAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingPressed,
    this.showBackArrow = true,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
      centerTitle: false,
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back),
            )
          : leadingIcon != null
              ? IconButton(
                  onPressed: leadingPressed,
                  icon: Icon(leadingIcon),
                )
              : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(FZDeviceUtils.getAppBarHighth());
}
