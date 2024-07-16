import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';

class MyShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: MyColors.darkGery.withOpacity(.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: MyColors.darkGery.withOpacity(.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}