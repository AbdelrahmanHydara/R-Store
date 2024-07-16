import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:r_store/features/personalization/settings/screens/settings_screen.dart';
import 'package:r_store/features/shop/home/screens/home_screen.dart';
import 'package:r_store/features/shop/store/screens/store_screen.dart';
import 'package:r_store/features/shop/wishlist/screens/wishlist_screen.dart';

part 'navigation_menu_state.dart';

class NavigationMenuCubit extends Cubit<NavigationMenuState> {
  NavigationMenuCubit() : super(NavigationMenuInitial());

  final screens = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    SettingsScreen(),
  ];

  final List<Widget> navigationDestination = [
    NavigationDestination(
      icon: Icon(
        Icons.home_outlined,
      ),
      label: "Home",
    ),
    NavigationDestination(
      icon: Icon(
        Icons.shopping_cart_outlined,
      ),
      label: "Store",
    ),
    NavigationDestination(
      icon: Icon(
        Icons.favorite_outline,
      ),
      label: "Wishlist",
    ),
    NavigationDestination(
      icon: Icon(
        Icons.person_outlined,
      ),
      label: "Profile",
    ),
  ];

  int currentIndex = 0;

  void onDestinationSelected(int index) {
    currentIndex = index;
    emit(DestinationSelectedState());
  }
}
