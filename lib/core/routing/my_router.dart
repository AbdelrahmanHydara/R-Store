import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/features/auth/forget_password/cubit/forget_password_cubit.dart';
import 'package:r_store/features/auth/login/cubit/login_cubit.dart';
import 'package:r_store/features/auth/register/cubit/register_cubit.dart';
import '../../features/auth/forget_password/screens/forget_password_screen.dart';
import '../../features/auth/forget_password/screens/reset_password_screen.dart';
import '../../features/auth/login/screens/login_screen.dart';
import '../../features/auth/verify_email/cubit/verify_email_cubit.dart';
import '../../features/auth/register/screens/register_screen.dart';
import '../../features/auth/verify_email/screens/verify_email_screen.dart';
import '../../features/navigation_menu/cubit/navigation_menu_cubit.dart';
import '../../features/navigation_menu/screens/navigation_menu_screen.dart';
import '../../features/onboarding/cubit/onboarding_cubit.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/personalization/address/screens/add_new_address_screen.dart';
import '../../features/personalization/address/screens/user_address_screen.dart';
import '../../features/personalization/profile/profile/screens/profile_screen.dart';
import '../../features/personalization/profile/change_name/screens/change_name_screen.dart';
import '../../features/personalization/profile/reauthenticate/screens/reauthenticate_screen.dart';
import '../../features/personalization/settings/screens/settings_screen.dart';
import '../../features/shop/all_products/screens/all_products_screen.dart';
import '../../features/shop/brands/screens/all_brands_screen.dart';
import '../../features/shop/brands/screens/brands_products_screen.dart';
import '../../features/shop/cart/screens/cart_screen.dart';
import '../../features/shop/checkout/screens/checkout_screen.dart';
import '../../features/shop/home/screens/home_screen.dart';
import '../../features/shop/order/screens/order_screen.dart';
import '../../features/shop/product_reviews/screens/product_reviews_screen.dart';
import '../../features/shop/store/screens/store_screen.dart';
import '../../features/shop/subcategory/screens/sub_categories_screen.dart';
import '../../features/shop/wishlist/screens/wishlist_screen.dart';
import 'routes.dart';

class MyRouter {
  MyRouter._();

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => OnboardingCubit(),
            child: const OnBoardingScreen(),
          ),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (BuildContext context) => LoginCubit(),
              child: const LoginScreen(),
          ),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (BuildContext context) => RegisterCubit(),
              child: const RegisterScreen(),
          ),
        );

      case Routes.verifyEmailScreen:
        final email = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => VerifyEmailCubit(),
            child: VerifyEmailScreen(
              email: email,
            ),
          ),
        );

      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => ForgetPasswordCubit(),
              child: const ForgetPasswordScreen()),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: ForgetPasswordCubit(),
              child: const ResetPasswordScreen()),
        );

      case Routes.navigationMenuScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => NavigationMenuCubit(),
            child: const NavigationMenuScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.storeScreen:
        return MaterialPageRoute(
          builder: (_) => const StoreScreen(),
        );

      case Routes.wishlistScreen:
        return MaterialPageRoute(
          builder: (_) => const WishlistScreen(),
        );

      case Routes.settingsScreen:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );

      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );

      case Routes.userAddressScreen:
        return MaterialPageRoute(
          builder: (_) => const UserAddressScreen(),
        );

      case Routes.addNewAddressScreen:
        return MaterialPageRoute(
          builder: (_) => const AddNewAddressScreen(),
        );

      case Routes.productReviewsScreen:
        return MaterialPageRoute(
          builder: (_) => const ProductReviewsScreen(),
        );

      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(),
        );

      case Routes.checkoutScreen:
        return MaterialPageRoute(
          builder: (_) => const CheckoutScreen(),
        );

      case Routes.orderScreen:
        return MaterialPageRoute(
          builder: (_) => const OrderScreen(),
        );

      case Routes.subCategoriesScreen:
        return MaterialPageRoute(
          builder: (_) => const SubCategoriesScreen(),
        );

      case Routes.allProductsScreen:
        return MaterialPageRoute(
          builder: (_) => const AllProductsScreen(),
        );

      case Routes.allBrandsScreen:
        return MaterialPageRoute(
          builder: (_) => const AllBrandsScreen(),
        );

      case Routes.brandsProductsScreen:
        return MaterialPageRoute(
          builder: (_) => const BrandsProductsScreen(),
        );

      case Routes.changeNameScreen:
        return MaterialPageRoute(
          builder: (_) => const ChangeNameScreen(),
        );

      case Routes.reAuthenticateScreen:
        return MaterialPageRoute(
          builder: (_) => const ReAuthenticateScreen(),
        );
    }
    return null;
  }
}
