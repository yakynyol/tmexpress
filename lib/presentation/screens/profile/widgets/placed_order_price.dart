import 'package:flutter/material.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/order/placed_order.dart';
import '../../../theme/app_theme.dart';

class PlacedOrderPrice extends StatelessWidget {
  const PlacedOrderPrice(this.order, {super.key});
  final PlacedOrder order;

  @override
  Widget build(BuildContext context) {
    final total = order.totalPrice + order.orderDiscount;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text('${S.current.total}: ', style: AppTextStyle.dark14),
            ),
            Text(total.floor().toString(), style: AppTextStyle.black20),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                '${(total - total.truncate()).toStringAsFixed(2)} man.'
                    .substring(1),
                style: AppTextStyle.dark12,
              ),
            ),
          ],
        ),
        if (order.orderDiscount != 0) ...[
          Text('${S.current.cash}: ${order.totalPrice} m.',
              style: AppTextStyle.grey16),
          Text('${S.current.discount}: ${order.orderDiscount} m.',
              style: AppTextStyle.grey16),
        ],
      ],
    );
  }
}
