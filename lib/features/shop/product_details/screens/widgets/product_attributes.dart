import 'package:flutter/material.dart';
import 'package:r_store/core/components/chips/my_choice_chips.dart';
import 'package:r_store/core/components/texts/my_section_heading.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'selected_pricing_and_description.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(10),
        /// Selected Attributes Pricing and Description
        SelectedPricingAndDescription(),
        verticalSpace(16),
        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MySectionHeading(
              title: "Colors",
            ),
            verticalSpace(10),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChips(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Red',
                  selected: true,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Teal',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Yellow',
                  selected: true,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Gery',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        verticalSpace(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MySectionHeading(
              title: "Size",
            ),
            verticalSpace(10),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChips(
                  text: 'Eu 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Eu 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Eu 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Eu 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Eu 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                MyChoiceChips(
                  text: 'Eu 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
