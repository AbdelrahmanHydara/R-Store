// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) =>
    ProductsModel(
      brandId: json['brandId'] as String,
      isFeaturedBrand: json['isFeaturedBrand'] as bool? ?? true,
      brandImage: json['brandImage'] as String,
      brandName: json['brandName'] as String,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      oldPrice: (json['oldPrice'] as num?)?.toDouble() ?? 0.0,
      productType: json['productType'] as String,
      stock: json['stock'] as int? ?? 0,
      thumbnail: json['thumbnail'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isFeatured: json['isFeatured'] as bool? ?? true,
      brandProductsCount: json['brandProductsCount'] as int? ?? 0,
      categoryId: json['categoryId'] as String,
      description: json['description'] as String? ?? "",
      productAttributes: (json['productAttributes'] as List<dynamic>)
          .map(
              (e) => ProductAttributesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      productVariations: (json['productVariations'] as List<dynamic>)
          .map(
              (e) => ProductVariationsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      salePrice: (json['salePrice'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$ProductsModelToJson(ProductsModel instance) =>
    <String, dynamic>{
      'isFeaturedBrand': instance.isFeaturedBrand,
      'brandId': instance.brandId,
      'brandName': instance.brandName,
      'brandImage': instance.brandImage,
      'brandProductsCount': instance.brandProductsCount,
      'isFeatured': instance.isFeatured,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'stock': instance.stock,
      'title': instance.title,
      'salePrice': instance.salePrice,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'images': instance.images,
      'productType': instance.productType,
      'productVariations': instance.productVariations,
      'productAttributes': instance.productAttributes,
    };

ProductAttributesModel _$ProductAttributesModelFromJson(
        Map<String, dynamic> json) =>
    ProductAttributesModel(
      name: json['name'] as String? ?? "",
      values:
          (json['values'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductAttributesModelToJson(
        ProductAttributesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };
