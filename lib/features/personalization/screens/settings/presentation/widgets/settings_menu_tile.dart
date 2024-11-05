import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/extentions/extentions.dart';

class FZSettimgsMenuTile extends StatelessWidget {
  const FZSettimgsMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.onPressed,
    this.trailing,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: FZColors.primary,
      ),
      title: Text(title, style: context.theme.textTheme.titleMedium),
      subtitle: Text(subTitle, style: context.theme.textTheme.labelMedium),
      trailing: trailing,
      onTap: onPressed,
    );
  }
}
