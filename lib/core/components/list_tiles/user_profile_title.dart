import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/shimmer/my_shimmer_effect.dart';
import 'package:r_store/core/constants/my_icons.dart';
import 'package:r_store/core/constants/my_images.dart';
import 'package:r_store/features/personalization/settings/cubit/user_cubit.dart';
import '../../constants/my_colors.dart';
import '../../theming/custom_themes/my_font_weight.dart';
import '../images/my_circular_image.dart';

class UserProfileTile extends StatelessWidget {
  final Function()? onTap;

  const UserProfileTile({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          final networkImage = context.read<UserCubit>().userModel!.profilePicture;
          final image = networkImage.isNotEmpty ? networkImage : MyImages.profilePicture;
          if(context.read<UserCubit>().userModel == null) {
            return MyShimmerEffect(
              width: 50,
              height: 50,
              radius: 50,
            );
          } else {
            return MyCircularImage(
              isNetworkImage: networkImage.isNotEmpty,
              vertical: 0,
              horizontal: 0,
              width: 45.w,
              height: 80.h,
              image: "${image}",
            );
          }
        },
      ),
      title: BlocBuilder<UserCubit, UserState>(builder: (context, state) {
        if (state is GetUserDataLoadingState) {
          return MyShimmerEffect();
        } else {
          return Text(
            "${context.read<UserCubit>().userModel?.fullName}",
            style: TextStyle(
              fontSize: 18.sp,
              color: MyColors.myWhite,
              fontWeight: MyFontWeight.semiBold,
            ),
          );
        }
      }),
      subtitle: BlocBuilder<UserCubit, UserState>(builder: (context, state) {
        if (state is GetUserDataLoadingState) {
          return MyShimmerEffect();
        } else {
          return Text(
            "${context.read<UserCubit>().userModel?.email}",
            style: TextStyle(
              fontSize: 16.sp,
              color: MyColors.myWhite,
              fontWeight: MyFontWeight.regular,
            ),
          );
        }
      }),
      trailing: IconButton(
        onPressed: onTap,
        icon: Image(
          image: AssetImage(MyIcons.edit),
          width: 30.w,
          height: 30.h,
          color: MyColors.myWhite,
        ),
      ),
    );
  }
}
