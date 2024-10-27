import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/search_container.dart';

import 'package:fz_store/features/shop/screens/home/presentation/widgets/home_appbar.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';
import 'package:fz_store/common/widgets/primary_header_container.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FZCurvedEdgesWidget(
              child: FZPrimaryHeaderContainer(
                child: Column(
                  children: [
                    const FZHomeAppBar(),
                    const SizedBox(
                      height: FZSizes.s16,
                    ),
                    FZSearchContainer(
                      text: FZText.searchInStore,
                      showBackground: true,
                      showBorder: false,
                      icon: Icons.search_outlined,
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
