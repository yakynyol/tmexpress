import 'package:flutter/material.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/order/placed_order.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/date_extension.dart';
import '../placed_order/placed_order_page.dart';
import 'placed_order_payment_summary.dart';

// Updated PlacedOrderCard
class PlacedOrderCard extends StatelessWidget {
  const PlacedOrderCard(this.order, {this.clickable = true, super.key});
  final PlacedOrder order;
  final bool clickable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: clickable
          ? () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => PlacedOrderPage(order)))
          : null,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.bg2,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/order_statuses/${order.status.icon}',
                  height: 32,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(order.status.title, style: AppTextStyle.bold16),
                      const SizedBox(height: 4),
                      Text(order.createdAt.dmYHm, style: AppTextStyle.dark14),
                      const SizedBox(height: 4),
                      Text('${S.current.orderId}: ${order.id}',
                          style: AppTextStyle.grey14),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            PlacedOrderPaymentSummary(order),
          ],
        ),
      ),
    );
  }
}
