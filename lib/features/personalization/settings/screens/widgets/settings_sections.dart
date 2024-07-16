import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/helpers/spacing.dart';
import 'account_settings.dart';
import 'app_settings.dart';
import 'logout_button.dart';

class SettingsSections extends StatelessWidget {
  const SettingsSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: Column(
        children: [
          AccountSettings(),
          AppSettings(),
          verticalSpace(32),
          LogoutButton(),
          verticalSpace(10),
        ],
      ),
    );
  }
}
