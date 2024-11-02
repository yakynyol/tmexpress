import 'package:flutter/material.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/product/group.dart';
import '../../../theme/app_theme.dart';
import '../../products/products_page.dart';
import 'subcategory.w.dart';

class GroupExpansionTile extends StatelessWidget {
  const GroupExpansionTile(this.group, {super.key});
  final Group group;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(group.title, style: AppTextStyle.bold20),
      tilePadding: const EdgeInsets.symmetric(horizontal: 20),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: Colors.grey[50],
      children: [
        const SizedBox(height: 12),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 170,
              ),
              itemCount: group.subCategories.length,
              itemBuilder: (_, index) =>
                  SubcategoryW(group.subCategories[index]),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                    builder: (_) => ProductsPage(productParent: group)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.current.all,
                      textAlign: TextAlign.center, style: AppTextStyle.bold16),
                  const SizedBox(width: 2),
                  Image.asset('assets/icons/angle-right.png', width: 20),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
