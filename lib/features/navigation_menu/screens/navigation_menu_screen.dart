import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/features/navigation_menu/cubit/navigation_menu_cubit.dart';

class NavigationMenuScreen extends StatelessWidget {
  const NavigationMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationMenuCubit, NavigationMenuState>(
      builder: (context, state) {
        return Scaffold(
          body: context.read<NavigationMenuCubit>().screens[
            context.read<NavigationMenuCubit>().currentIndex
          ],
          bottomNavigationBar: NavigationBar(
            destinations: context.read<NavigationMenuCubit>().navigationDestination,
            selectedIndex: context.read<NavigationMenuCubit>().currentIndex,
            onDestinationSelected: (index) =>
              context.read<NavigationMenuCubit>().onDestinationSelected(index),
          ),
        );
      },
    );
  }
}
