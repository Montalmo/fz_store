import 'package:flutter/material.dart';

import 'package:fz_store/utils/device/device_utility.dart';
import 'package:go_router/go_router.dart';

class FZAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FZAppBar(
      {super.key,
      required this.title,
      this.showBackArrow = true,
      this.leadingIcon,
      required this.actions,
      required this.leadingPressed});

  final Widget title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget> actions;
  final VoidCallback leadingPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showBackArrow,
      title:  title,
      actions: actions,
      leading: showBackArrow
          ? IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(leadingIcon),
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
