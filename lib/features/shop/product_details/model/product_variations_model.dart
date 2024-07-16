import 'package:json_annotation/json_annotation.dart';

part 'product_variations_model.g.dart';

@JsonSerializable()
class ProductVariationsModel {
  final String id;
  String description;
  String image;
  String color;
  String size;
  int stock;
  double salePrice;
  double price;

  ProductVariationsModel({
    this.size = "",
    this.color = "",
    required this.id,
    this.image = "",
    this.description = "",
    this.stock = 0,
    this.salePrice = 0,
    this.price = 0,
  });

  factory ProductVariationsModel.fromJson(Map<String, dynamic> json) => _$ProductVariationsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariationsModelToJson(this);
}
