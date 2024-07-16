import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/constants/my_images.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/verify_email/cubit/verify_email_cubit.dart';
import 'widgets/title_subtitle_verify.dart';
import 'widgets/verify_button.dart';
import 'widgets/verify_email_bloc_listener.dart';

class VerifyEmailScreen extends StatefulWidget {
  final email;

  VerifyEmailScreen({super.key, this.email});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<VerifyEmailCubit>().emitSendEmailVerification();
    context.read<VerifyEmailCubit>().emitSetTimerForAutoRedirect(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: false,
        actions: [
          IconButton(
            onPressed: () {
              context.read<VerifyEmailCubit>().emitLogout();
              context.pushReplacementNamed(Routes.loginScreen);
            },
            icon: const Icon(
                Icons.cancel_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lottie.asset(
                width: double.infinity,
                height: 350.h,
                MyImages.verification,
              ),
              TitleSubtitleVerify(email: widget.email),
              const VerifyButton(),
              const VerifyEmailBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
