import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            await GoogleSignIn().signOut();
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text(
            "Logout",
          ),
      ),
    );
  }
}
