import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/custom_shapes/my_circle_container.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';

class MyChoiceChips extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  const MyChoiceChips({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isColor = MyHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
      child: ChoiceChip(
        label: isColor
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(
          color: selected ? MyColors.myWhite : null,
        ),
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        backgroundColor: isColor ? MyHelperFunctions.getColor(text) : null,
        avatar: isColor ? MyCircleContainer(
          width: 50.w,
          height: 50.h,
          color: MyHelperFunctions.getColor(text)!,
        ) : null,
        shape: isColor ? CircleBorder() : null,
      ),
    );
  }
}
