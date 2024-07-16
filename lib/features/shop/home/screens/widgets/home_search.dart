import 'package:flutter/material.dart';
import '../../../../../core/components/custom_shapes/my_search_container.dart';
import '../../../../../core/constants/my_strings.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return MySearchContainer(
      text: MyStrings.searchTitle,

    );
  }
}
