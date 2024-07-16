import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:r_store/core/helpers/local/cache_helper.dart';
import 'package:r_store/core/routing/routes.dart';
import 'firebase_options.dart';
import 'r_store.dart';

void main() async {
  // /// Widgets Binding
  // WidgetsFlutterBinding.ensureInitialized();
  // /// Initialize Firebase and Authentication
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // /// To fix texts being hidden bug in flutter_screenutil in release mode
  // await ScreenUtil.ensureScreenSize();
  // /// Local Shared Preferences
  // await CacheHelper.init();
  // final onboardingCompleted = await CacheHelper.getData(key: "1");
  // /// Start Widget Screen
  // dynamic widget;
  // User? user = FirebaseAuth.instance.currentUser;
  // if(user != null) {
  //   // If the user is logged in
  //   if(user.emailVerified) {
  //     // If the user's email is verified
  //     widget = Routes.navigationMenuScreen;
  //   } else {
  //     // If the user's email is not verified
  //     widget = Routes.verifyEmailScreen;
  //   }
  // } else {
  //   // Check if it's first time launching the app
  //   widget = onboardingCompleted??false ? Routes.loginScreen : Routes.onBoardingScreen;
  // }
  //   // runApp(RStoreApp(startWidget: widget));
    runApp(FlikkaApp());
}
