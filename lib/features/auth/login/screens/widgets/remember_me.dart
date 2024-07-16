import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';
import 'package:r_store/features/auth/login/cubit/login_cubit.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Checkbox(
                value: context.read<LoginCubit>().rememberMe,
                onChanged: (value) {
                  setState(() {
                    context.read<LoginCubit>().rememberMe = !context.read<LoginCubit>().rememberMe;
                  });
                },
            ),
            Text(
              MyStrings.rememberMe,
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: (){
          context.pushNamed(Routes.forgetPasswordScreen);
        },
          child: Text(
            MyStrings.forgotPassword,
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
