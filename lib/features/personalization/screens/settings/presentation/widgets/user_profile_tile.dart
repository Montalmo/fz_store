import 'package:flutter/material.dart';

import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/utils/router/router.dart';
import 'package:go_router/go_router.dart';

class FZUserProfileTile extends StatelessWidget {
  const FZUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 48,
        width: 48,
        child: ClipOval(
          child: Image.asset(FZImages.defaultAvatar),
        ),
      ),
      title: Text(
        'Montalmo S',
        style:
            context.theme.textTheme.headlineSmall!.apply(color: FZColors.white),
      ),
      subtitle: Text(
        'montalmo@gmail.com',
        style:
            context.theme.textTheme.bodySmall!.apply(color: FZColors.lightGrey),
      ),
      trailing: IconButton(
        onPressed: () {
          context.pushNamed(FZRouter.profileSreenRouteName);
        },
        icon: const Icon(
          Icons.edit_outlined,
          color: FZColors.white,
        ),
      ),
    );
  }
}
