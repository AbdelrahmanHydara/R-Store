// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      image: json['image'] as String,
      id: json['id'] as String,
      parentId: json['parentId'] as String? ?? "",
      name: json['name'] as String,
      isFeatured: json['isFeatured'] as bool,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'parentId': instance.parentId,
      'isFeatured': instance.isFeatured,
    };
