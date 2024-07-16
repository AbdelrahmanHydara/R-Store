import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:r_store/flikka/core/routing/my_router.dart';
import 'package:r_store/flikka/core/routing/routes.dart';
import 'package:r_store/flikka/core/theming/my_theme.dart';
import 'package:r_store/flikka/features/auth/login/screens/login_screen.dart';
import 'package:r_store/flikka/features/onboarding/screens/onboarding_screen.dart';

// class RStoreApp extends StatelessWidget {
//   final dynamic startWidget;
//
//   const RStoreApp({
//     super.key,
//     required this.startWidget,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(380, 820),
//       minTextAdapt: true,
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         initialRoute: startWidget,
//         onGenerateRoute: MyRouter.generateRoute,
//         themeMode: ThemeMode.system,
//         theme: MyTheme.lightTheme,
//         darkTheme: MyTheme.darkTheme,
//       ),
//     );
//   }
// }

class FlikkaApp extends StatelessWidget {

  const FlikkaApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: LoginScreen(),
        initialRoute: Routes.loginScreen,
        onGenerateRoute: MyRouter.generateRoute,
        themeMode: ThemeMode.system,
        theme: MyTheme.darkTheme,
      ),
    );
  }
}
