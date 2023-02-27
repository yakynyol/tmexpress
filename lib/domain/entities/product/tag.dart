import 'product_mini.dart';
import 'sub_tag.dart';

class Tag extends SubTag {
  const Tag({
    required this.id,
    required this.title,
    required this.product,
  }) : super(id, title);
  final int id;
  final String title;
  final List<ProductMini> product;
}