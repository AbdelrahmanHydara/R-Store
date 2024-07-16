import 'package:flutter/material.dart';
import 'package:r_store/core/components/layouts/my_grid_layout.dart';
import 'package:r_store/core/helpers/spacing.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.menu_outlined,
            ),
          ),
          onChanged: (value) {

          },
          items: [
            "Name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Newest",
            "Popularity",]
              .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e)))
              .toList(),
        ),
        verticalSpace(32),
        MyGridLayout(
          itemCount: 10,
          itemBuilder: (BuildContext , int ) {return null;},
          // itemBuilder: (context,index) => MyProductCardVertical(),
        ),
      ],
    );
  }
}
