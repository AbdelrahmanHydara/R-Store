import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'widgets/custom_indicator.dart';
import 'widgets/custom_page_view.dart';
import 'widgets/next_button_and_text.dart';
import 'widgets/onboarding_skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: false,
        actions: [
          OnBoardingSkipButton(),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 20.w,
          vertical:20.h,
        ),
        child: const Stack(
          children: [
            Column(
              children: [
                CustomPageView(),
                CustomIndicator(),
                Spacer(),
                NextButtonAndText(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
