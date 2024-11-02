import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/product/product_mini.dart';
import '../../../main.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  Media({
    required this.id,
    required this.titleTm,
    required this.titleRu,
    required this.descriptionTm,
    required this.descriptionRu,
    required this.video,
    required this.hls,
    required this.image,
    required this.products,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);

  final int id;

  @JsonKey(name: 'title')
  final String titleTm;
  @JsonKey(name: 'title_ru')
  final String? titleRu;
  String? get title => (isRu ? titleRu : null) ?? titleTm;

  @JsonKey(name: 'description')
  final String? descriptionTm;
  @JsonKey(name: 'description_ru')
  final String? descriptionRu;
  String? get description => (isRu ? descriptionRu : null) ?? descriptionTm;

  final String? video;
  final String? hls;
  final String? image;
  final List<ProductMini> products;
}
