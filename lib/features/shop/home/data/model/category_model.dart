import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  String id;
  String name;
  String image;
  String parentId;
  bool isFeatured;

  CategoryModel({
    required this.image,
    required this.id,
    this.parentId = "",
    required this.name,
    required this.isFeatured,
});

  static CategoryModel empty() => CategoryModel(image: '', parentId: '', id: '', name: '', isFeatured: false,);

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}