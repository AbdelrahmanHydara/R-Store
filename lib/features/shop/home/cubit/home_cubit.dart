import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:r_store/core/helpers/enums.dart';
import 'package:r_store/features/shop/home/data/model/banner_model.dart';
import 'package:r_store/features/shop/home/data/model/category_model.dart';
import 'package:r_store/features/shop/product_details/model/products_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    emitCheckInternet();
    emitGetAllCategories();
    emitGetAllBanners();
    emitGetAllProducts();
  }

  final _db = FirebaseFirestore.instance;

  CategoryModel? categoryModel;

  List<CategoryModel> categoryList = <CategoryModel>[];

  void emitGetAllCategories() {
    emit(GetAllCategoriesLoadingState());

    _db.collection("categories").where("isFeatured",isEqualTo: true).get().then((value) {
      value.docs.forEach((element) {
        categoryList.add(CategoryModel.fromJson(element.data()));
      });
      emit(GetAllCategoriesSuccessState());
    }).catchError((error) {
      emit(GetAllCategoriesErrorState(error.toString()));
    });
  }

  BannerModel? bannerModel;

  List<BannerModel> bannerList = <BannerModel>[];

  void emitGetAllBanners() {
    emit(GetAllBannersLoadingState());

    _db.collection("banners").where("active",isEqualTo: true).get().then((value) {
      value.docs.forEach((element) {
        bannerList.add(BannerModel.fromJson(element.data()));
      });
      emit(GetAllBannersSuccessState());
    }).catchError((error) {
      emit(GetAllBannersErrorState(error.toString()));
    });
  }

  ProductsModel? productsModel;

  List<ProductsModel> productsList = <ProductsModel>[];

  void emitGetAllProducts() {
    emit(GetAllProductsLoadingState());

    _db.collection("products").where("isFeatured",isEqualTo: true).get().then((value) {
      value.docs.forEach((element) {
        productsList.add(ProductsModel.fromJson(element.data()));
      });
      emit(GetAllProductsSuccessState());
    }).catchError((error) {
      print("/////////////////////////////////////Error ${error.toString()}");
      emit(GetAllProductsErrorState(error.toString()));
    });
  }

  String getProductPrice(ProductsModel products) {
    double smallestPrice = double.infinity;
    double largestPrice = 0.0;

    if(products.productType == ProductType.single.toString()) {
      return (products.salePrice > 0 ? products.salePrice : products.price).toString();
    } else {
      for(var variation in products.productVariations) {
        double priceToConsider = variation.salePrice > 0 ? variation.salePrice : variation.price;

        if(priceToConsider < smallestPrice) {
          smallestPrice = priceToConsider;
        }

        if(priceToConsider > largestPrice) {
          largestPrice = priceToConsider;
        }
      }

      if(smallestPrice == largestPrice) {
        return largestPrice.toString();
      } else {
        return "$smallestPrice - $largestPrice";
      }
    }
  }

  String calculateSalePercentage(double originalPrice, double? salePrice) {
    if(salePrice == null || salePrice <= 0.0) return "";
    if(originalPrice <= 0) return "";

    double percentage = (salePrice / originalPrice * 100);
    return percentage.toStringAsFixed(0);
  }

  String getProductStockStatus(int stock) {
    return stock > 0 ? 'In Stock' : 'Out of Stock';
  }

  String selectedProductImages = "";

  List<String> getAllProductImages(ProductsModel products,) {
    Set<String> images = {};
    images.add(products.thumbnail);
    images.addAll(products.images);
    if(products.productVariations.isNotEmpty) {
      images.addAll(products.productVariations.map((variation) => variation.image));
    }
    return images.toList();
  }

  StreamSubscription? subscription;

  void emitCheckInternet() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
          if(result == ConnectivityResult.wifi || result == ConnectivityResult.mobile) {
            emit(ConnectedState());
          } else {
            emit(NotConnectedState());
          }
        });
  }
}
