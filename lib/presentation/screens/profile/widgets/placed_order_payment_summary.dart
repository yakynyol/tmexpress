import 'package:flutter/material.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/order/placed_order.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/double_extension.dart';

class PlacedOrderPaymentSummary extends StatelessWidget {
  const PlacedOrderPaymentSummary(this.order, {super.key});
  final PlacedOrder order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.current.totalPrice, style: AppTextStyle.grey14),
            Text(
              order.paymentSummary.totalPrice.formatPrice,
              style: AppTextStyle.dark14,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.current.paid, style: AppTextStyle.grey14),
            Text(
              order.paymentSummary.totalPaid.formatPrice,
              style: AppTextStyle.dark14,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.current.remaining, style: AppTextStyle.grey14),
            Text(
              order.paymentSummary.remainingAmount.formatPrice,
              style: AppTextStyle.bold16.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
