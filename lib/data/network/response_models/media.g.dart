// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      id: (json['id'] as num).toInt(),
      titleTm: json['title'] as String,
      titleRu: json['title_ru'] as String?,
      descriptionTm: json['description'] as String?,
      descriptionRu: json['description_ru'] as String?,
      video: json['video'] as String?,
      hls: json['hls'] as String?,
      image: json['image'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductMini.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.titleTm,
      'title_ru': instance.titleRu,
      'description': instance.descriptionTm,
      'description_ru': instance.descriptionRu,
      'video': instance.video,
      'hls': instance.hls,
      'image': instance.image,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
