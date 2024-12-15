import 'package:flutter/material.dart';

import '../../../../domain/entities/order/payment.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/date_extension.dart';
import '../../../utils/double_extension.dart';

class PaymentHistoryItem extends StatelessWidget {
  const PaymentHistoryItem(this.payment, {super.key});
  final Payment payment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(payment.note, style: AppTextStyle.dark14),
              const SizedBox(height: 4),
              Text(
                payment.createdAt.dmYHm,
                style: AppTextStyle.grey12,
              ),
            ],
          ),
        ),
        Text(
          payment.amount.formatPrice,
          style: AppTextStyle.bold14.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}
