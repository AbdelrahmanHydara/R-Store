import 'package:flutter/material.dart';
import 'package:r_store/core/components/success/success_screen.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessScreen(
                title: "Payment Success!",
                subtitle: "Your item will be shipping soon!",
                onTap: () {
                  context.pushReplacementNamed(Routes.navigationMenuScreen);
                },
              ),
            ),
          );
        },
        child: const Text(
          "Checkout \$1253",
        ),
      ),
    );
  }
}
