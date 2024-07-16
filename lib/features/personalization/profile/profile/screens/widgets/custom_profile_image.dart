import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/core/components/images/my_circular_image.dart';
import 'package:r_store/core/components/shimmer/my_shimmer_effect.dart';
import 'package:r_store/core/constants/my_images.dart';
import 'package:r_store/core/constants/my_strings.dart';
import 'package:r_store/features/personalization/settings/cubit/user_cubit.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              final networkImage = context.read<UserCubit>().userModel!.profilePicture;
              final image = networkImage.isNotEmpty ? networkImage : MyImages.profilePicture;
              if(state is UploadUserProfileImageLoadingState) {
                return MyShimmerEffect(
                  width: 130,
                  height: 130,
                  radius: 130,
                );
              } else {
                return MyCircularImage(
                  isNetworkImage: networkImage.isNotEmpty,
                  width: 130.w,
                  height: 130.h,
                  image: "${image}",
                );
              }
            },
          ),
          TextButton(
            onPressed: () {
              context.read<UserCubit>().emitUploadUserProfileImage();
            },
            child: Text(
              MyStrings.profileTitle,
            ),
          ),
        ],
      ),
    );
  }
}
