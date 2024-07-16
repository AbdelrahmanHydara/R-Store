// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariationsModel _$ProductVariationsModelFromJson(
        Map<String, dynamic> json) =>
    ProductVariationsModel(
      size: json['size'] as String? ?? "",
      color: json['color'] as String? ?? "",
      id: json['id'] as String,
      image: json['image'] as String? ?? "",
      description: json['description'] as String? ?? "",
      stock: json['stock'] as int? ?? 0,
      salePrice: (json['salePrice'] as num?)?.toDouble() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ProductVariationsModelToJson(
        ProductVariationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'image': instance.image,
      'color': instance.color,
      'size': instance.size,
      'stock': instance.stock,
      'salePrice': instance.salePrice,
      'price': instance.price,
    };
