import 'package:flutter/material.dart';
import 'package:r_store/core/components/appbar/my_app_bar.dart';
import 'package:r_store/core/helpers/spacing.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text("Add New Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(
                      Icons.person_outlined,
                    ),
                  ),
                ),
                verticalSpace(16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Phone",
                    prefixIcon: Icon(
                      Icons.phone_iphone_outlined,
                    ),
                  ),
                ),
                verticalSpace(16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Street",
                          prefixIcon: Icon(
                            Icons.build_outlined,
                          ),
                        ),
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Postal Code",
                          prefixIcon: Icon(
                            Icons.code_outlined,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "City",
                          prefixIcon: Icon(
                            Icons.business_sharp,
                          ),
                        ),
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "State",
                          prefixIcon: Icon(
                            Icons.online_prediction_outlined,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Country",
                    prefixIcon: Icon(
                      Icons.grid_goldenratio_outlined,
                    ),
                  ),
                ),
                verticalSpace(32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
