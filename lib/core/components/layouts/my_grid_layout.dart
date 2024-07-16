import 'package:flutter/material.dart';

class MyGridLayout extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final double? mainAxisExtent;

  const MyGridLayout({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisExtent = 296.4,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        mainAxisExtent: mainAxisExtent,
      ),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: itemBuilder,
      itemCount: itemCount,
    );
  }
}
