import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';
import 'widgets/custom_home_body.dart';
import 'widgets/custom_home_header.dart';
import 'widgets/home_bloc_listener.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomHomeHeader(),
              PromoSlider(),
              CustomHomeBody(),
              HomeBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
