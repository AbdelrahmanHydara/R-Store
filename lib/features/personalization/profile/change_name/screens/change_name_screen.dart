import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/constants/my_colors.dart';
import 'package:r_store/core/helpers/my_helpers_functions.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'package:r_store/core/theming/custom_themes/my_font_weight.dart';
import 'form_update_name.dart';

class ChangeNameScreen extends StatelessWidget {
  const ChangeNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: _buildMyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Use real name for easy verification. This name will appear on several pages.",
              style: TextStyle(
                fontSize: 14.sp,
                color: dark ? MyColors.myWhite.withOpacity(0.5) : MyColors.myBlack.withOpacity(0.5),
                fontWeight: MyFontWeight.regular,
              ),
            ),
            verticalSpace(32),
            FormUpdateName(),
          ],
        ),
      ),
    );
  }

  MyAppBar _buildMyAppBar() {
    return MyAppBar(
      title: Text(
          "Change Name",
      ),
    );
  }
}
