import 'package:flutter/material.dart';

import 'package:fz_store/common/widgets/primary_header_container.dart';
import 'package:fz_store/common/widgets/curved_edges_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: FZAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FZCurvedEdgesWidget(
              child: FZPrimaryHeaderContainer(
                child: Column(
                  children: [Text('Hello')],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
