import 'package:flutter/material.dart';
import 'package:fz_store/common/widgets/curved_edges.dart';

class FZCurvedEdgesWidget extends StatelessWidget {
  const FZCurvedEdgesWidget({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FZCustomCurvedEdges(),
      child: child,
    );
  }
}
