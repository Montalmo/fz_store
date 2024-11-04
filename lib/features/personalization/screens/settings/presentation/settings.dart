import 'package:flutter/material.dart';

import 'package:fz_store/common/widgets/appbar.dart';
import 'package:fz_store/features/personalization/screens/settings/presentation/widgets/user_profile_tile.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/extentions/extentions.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';
import 'package:fz_store/common/widgets/primary_header_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
