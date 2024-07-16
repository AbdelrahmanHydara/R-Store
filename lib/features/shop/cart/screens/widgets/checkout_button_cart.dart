import 'package:flutter/material.dart';
import 'package:r_store/core/helpers/extensions.dart';
import 'package:r_store/core/routing/routes.dart';

class CheckoutButtonCart extends StatelessWidget {
  const CheckoutButtonCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          context.pushNamed(Routes.checkoutScreen);
        },
        child: const Text(
          "Checkout \$1253",
        ),
      ),
    );
  }
}
