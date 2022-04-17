import 'package:flutter/material.dart';

import '../../domain/entities/subcategory.dart';
import '../../domain/entities/tag.dart';
import '../screens/detail/detail_page.dart';
import '../screens/products/products_page.dart';
import 'constants.dart';

class NavigationHelper {
  const NavigationHelper._();

  // Navigate to one of Product, Tag, Subcategory
  static void navigateToPTS(
      BuildContext context, dynamic pageType, dynamic id) {
    print(pageType);
    Widget? _page;
    final _id = id is String? ? int.tryParse(id ?? '') : id;

    if (_id != null) {
      switch (pageType) {
        case kProductPage:
          _page = DetailPage(_id);
          break;
        case kTagPage:
          final tag = Tag(id: _id, title: '', product: const []);
          _page = ProductsPage(productParent: tag);
          break;
        case kSubcategoryPage:
          final sub = Subcategory(id: _id, title: '', subCategoryImage: '');
          _page = ProductsPage(productParent: sub);
          break;
      }
      if (_page != null) {
        Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => _page!),
        );
      }
    }
  }
}