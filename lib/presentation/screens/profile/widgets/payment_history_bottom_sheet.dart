// Payment History Bottom Sheet
import 'package:flutter/material.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/order/payment.dart';
import '../../../theme/app_theme.dart';
import 'payment_history_item.dart';

class PaymentHistoryBottomSheet extends StatelessWidget {
  const PaymentHistoryBottomSheet(this.payments, {super.key});
  final List<Payment> payments;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.current.paymentHistory, style: AppTextStyle.bold18),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * .7),
            child: ListView.separated(
              itemCount: payments.length * 10,
              separatorBuilder: (_, __) =>
                  const Divider(height: 24, thickness: .5),
              itemBuilder: (_, index) =>
                  PaymentHistoryItem(payments[index % 2]),
            ),
          ),
        ],
      ),
    );
  }
}
