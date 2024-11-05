import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fz_store/common/widgets/appbar.dart';
import 'package:fz_store/features/personalization/screens/settings/data/settings_mune_tile_data.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/common/widgets/section_heading.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';
import 'package:fz_store/common/widgets/primary_header_container.dart';
import 'package:fz_store/features/personalization/screens/settings/presentation/widgets/settings_menu_tile.dart';
import 'package:fz_store/features/personalization/screens/settings/presentation/widgets/user_profile_tile.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsmenuList = ref.watch(settingsMenuTileListProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FZCurvedEdgesWidget(
              child: FZPrimaryHeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FZAppBar(
                      title: Text(
                        'Account',
                        style: context.theme.textTheme.headlineMedium,
                      ),
                      showBackArrow: false,
                    ),
                    const FZUserProfileTile(),
                    const SizedBox(
                      height: FZSizes.s32,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: settingsmenuList
                  .map((element) => FZSettimgsMenuTile(
                        icon: element.icon,
                        title: element.title,
                        subTitle: element.subTitle,
                        onPressed: element.onPressed,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
