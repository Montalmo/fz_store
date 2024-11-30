import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/common/widgets/appbar.dart';
import 'package:fz_store/common/widgets/section_heading.dart';
import 'package:fz_store/features/personalization/screens/profile/data/profile_menu_tile.dart';
import 'package:fz_store/features/personalization/screens/profile/presentation/widgets/profile_menu.dart';
import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/constants/sizes.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileInformationList =
        ref.watch(profileInformationMenuTileListProvider);
    final personalInformationList =
        ref.watch(personalInformationMenuTileListProvider);

    return Scaffold(
      appBar: const FZAppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: FZSizes.s16,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: ClipOval(
                        child: Image.asset(FZImages.defaultAvatar),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Pictire'),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(
                      left: FZSizes.s16,
                      right: FZSizes.s16,
                      bottom: FZSizes.s16),
                  child: Divider()),
              Padding(
                 padding: const EdgeInsets.symmetric(horizontal: FZSizes.s16),
                child: const FZSectionHeading(
                    showActionButton: false,
                    title: 'Profile Information',
                    isHome: false),
              ),
              const SizedBox(
                height: FZSizes.s16,
              ),
              Column(
                children: profileInformationList
                    .map((element) => FZProfileMenu(
                        onPressed: element.onPress,
                        title: element.lable,
                        value: element.value))
                    .toList(),
              ),
              const Padding(
                  padding: EdgeInsets.only(
                      left: FZSizes.s16,
                      right: FZSizes.s16,
                      bottom: FZSizes.s8,
                      top: FZSizes.s8),
                  child: Divider()),
              Column(
                children: personalInformationList
                    .map((element) => FZProfileMenu(
                          onPressed: element.onPress,
                          title: element.lable,
                          value: element.value,
                          icon: element.icon!,
                        ))
                    .toList(),
              ),
              const Padding(
                  padding: EdgeInsets.only(
                      left: FZSizes.s16,
                      right: FZSizes.s16,
                      bottom: FZSizes.s8,
                      top: FZSizes.s8),
                  child: Divider()),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
