// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      imageUrl: json['imageUrl'] as String,
      targetScreen: json['targetScreen'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'targetScreen': instance.targetScreen,
      'active': instance.active,
    };
