
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/utils/helpers/helper_function.dart';
import 'package:fz_store/features/shop/controllers/home_controllers/navigation_menu_controller.dart';

class NavigationMenu extends ConsumerWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = FZHelperFuctions.isDarkMode(context);

    final currentPageIndex = ref.watch(currentPageIndexProvider);
    final currentPagesList = ref.watch(navigationMenuPagesProvider);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 72,
        elevation: 0,
        selectedIndex: currentPageIndex,
        backgroundColor: dark ? FZColors.dark : Colors.white,
        indicatorColor: FZColors.primary.withOpacity(.1),
        onDestinationSelected: (index) {
          ref.read(currentPageIndexProvider.notifier).state = index;
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: FZText.home,
            selectedIcon: Icon(
              Icons.home_outlined,
              color: FZColors.primary,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.store_outlined),
            label: FZText.store,
            selectedIcon: Icon(
              Icons.store_outlined,
              color: FZColors.primary,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            label: FZText.wishlist,
            selectedIcon: Icon(
              Icons.favorite_outline,
              color: FZColors.primary,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: FZText.profile,
            selectedIcon: Icon(
              Icons.person_2_outlined,
              color: FZColors.primary,
            ),
          ),
        ],
      ),
      body: currentPagesList[currentPageIndex],
    );
  }
}
