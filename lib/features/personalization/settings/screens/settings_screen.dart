import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/features/personalization/settings/cubit/user_cubit.dart';
import 'widgets/settings_header_container.dart';
import 'widgets/settings_sections.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: Scaffold(
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (context.read<UserCubit>().userModel == null)
              return const Center(child: CircularProgressIndicator());
            return SingleChildScrollView(
              child: Column(
                children: [
                  SettingsHeaderContainer(),
                  SettingsSections(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
