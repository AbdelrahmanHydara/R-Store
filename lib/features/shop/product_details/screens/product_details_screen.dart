import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_store/features/shop/home/cubit/home_cubit.dart';
import 'package:r_store/features/shop/product_details/model/products_model.dart';
import 'widgets/bottom_add_to_cart.dart';
import 'widgets/checkout_button_and_description.dart';
import 'widgets/product_attributes.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/raring_and_share.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductsModel products;

  ProductDetailsScreen({super.key,required this.products});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: Scaffold(
        bottomNavigationBar: const BottomAddToCart(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProductImageSlider(products: products),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 20,
                  bottom: 20,
                  end: 20,
                ),
                child: Column(
                  children: [
                    RatingAndShare(),
                    ProductMetaData(),
                    ProductAttributes(),
                    CheckoutButtonAndDescription(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
