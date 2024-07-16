import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/core/components/SnackBar/my_snack_bar.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';

class HomeBlocListener extends StatelessWidget {
  const HomeBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit,HomeState>(
      listener: (context, state) {
        if(state is NotConnectedState) {
          MySnackBar.notConnection(context: context);
        };
    },
      child: const SizedBox.shrink(),
    );
  }
}
