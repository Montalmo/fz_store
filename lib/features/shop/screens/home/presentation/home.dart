import 'package:flutter/material.dart';

import 'package:fz_store/features/shop/screens/home/presentation/widgets/home_appbar.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';
import 'package:fz_store/common/widgets/primary_header_container.dart';

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
                    FZHomeAppBar(),
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
