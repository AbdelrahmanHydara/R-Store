import 'package:flutter/material.dart';
import 'custom_curved_edges.dart';

class MyCurvedEdgesWidget extends StatelessWidget {
  final Widget child;

  const MyCurvedEdgesWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
