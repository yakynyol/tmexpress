import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../image.dart';
import 'brand.dart';
import 'country.dart';
import 'size.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.video,
    required this.weight,
    required this.ourRating,
    required this.discount,
    required this.productImages,
    required this.size,
    required this.normalPrice,
    required this.normalPriceW,
    required this.wholesaleLimit,
    required this.isLiked,
    required this.sizeTable,
    required this.country,
    required this.brand,
    required this.onStock,
  });

  final int id;
  final String title;
  final String description;
  final String video;
  final double weight;
  final double ourRating;
  final double discount;
  final Map<String, List<Image>> productImages;
  final List<Size> size;
  final double normalPrice;
  final double normalPriceW;
  final int wholesaleLimit;
  final bool isLiked;
  final bool onStock;
  final String sizeTable;
  final Country? country;
  final Brand? brand;

  double normalPriceByCount(int count) =>
      count >= wholesaleLimit && wholesaleLimit > 0
          ? normalPriceW
          : normalPrice;

  @override
  List<Object?> get props => [id, isLiked];

  Product copyWith({
    int? id,
    String? title,
    String? description,
    double? weight,
    double? ourRating,
    double? discount,
    Map<String, List<Image>>? productImages,
    List<Size>? size,
    double? expressPrice,
    double? normalPrice,
    double? expressPriceW,
    double? normalPriceW,
    int? wholesaleLimit,
    bool? isLiked,
    String? sizeTable,
    Country? country,
    Brand? brand,
    bool? onStock,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      video: video,
      weight: weight ?? this.weight,
      ourRating: ourRating ?? this.ourRating,
      discount: discount ?? this.discount,
      productImages: productImages ?? this.productImages,
      size: size ?? this.size,
      normalPrice: normalPrice ?? this.normalPrice,
      normalPriceW: normalPriceW ?? this.normalPriceW,
      wholesaleLimit: wholesaleLimit ?? this.wholesaleLimit,
      isLiked: isLiked ?? this.isLiked,
      sizeTable: sizeTable ?? this.sizeTable,
      country: country ?? this.country,
      brand: brand ?? this.brand,
      onStock: onStock ?? this.onStock,
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
