import 'package:json_annotation/json_annotation.dart';
import 'product_variations_model.dart';

part 'products_model.g.dart';

@JsonSerializable()
class ProductsModel {
  bool isFeaturedBrand;
  String brandId;
  String brandName ;
  String brandImage;
  int brandProductsCount;
  bool isFeatured;
  double price;
  double oldPrice;
  int stock;
  String title;
  double salePrice;
  String thumbnail;
  String description;
  String categoryId;
  List<String> images;
  String productType;
  List<ProductVariationsModel> productVariations;
  List<ProductAttributesModel> productAttributes;

  ProductsModel({
    required this.brandId,
    this.isFeaturedBrand = true,
    required this.brandImage,
    required this.brandName,
    required this.title,
    required this.price,
    this.oldPrice = 0.0,
    required this.productType,
    this.stock = 0,
    required this.thumbnail,
    required this.images,
    this.isFeatured = true,
    this.brandProductsCount = 0,
    required this.categoryId,
    this.description = "",
    required this.productAttributes,
    required this.productVariations,
    this.salePrice = 0.0,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => _$ProductsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);
}

@JsonSerializable()
class ProductAttributesModel {
  String name;
  final List<String> values;

  ProductAttributesModel({
    this.name = "",
    required this.values,
  });

  factory ProductAttributesModel.fromJson(Map<String, dynamic> json) => _$ProductAttributesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributesModelToJson(this);
}