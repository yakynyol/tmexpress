import 'package:flutter/material.dart';

import '../../domain/entities/product/brand.dart';
import '../../domain/usecases/products/search_product_usecase.dart';
import '../screens/home/search/search_page.dart';
import '../theme/app_theme.dart';
import 'app_image.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    required this.brand,
    super.key,
  });
  final Brand brand;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (_) => SearchPage(
                SearchParams(query: '', brandId: brand.id, title: brand.name))),
      ),
      child: Column(
        children: [
          AppImage(
            brand.image,
            width: 80,
            height: 80,
            borderRadius: BorderRadius.circular(12),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Text(
              brand.name,
              style: AppTextStyle.grey16,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 12)
        ],
      ),
    );
  }
}
