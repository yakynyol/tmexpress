import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/order/payment.dart';
import '../../../../domain/entities/order/placed_order.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/date_extension.dart';
import '../../../widgets/app_cart_button.dart';
import '../../../widgets/app_empty.dart';
import '../../../widgets/app_error.dart';
import '../../../widgets/app_loader.dart';
import '../../../widgets/primary_app_bar.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/payment_history_bottom_sheet.dart';
import '../widgets/placed_order_card.dart';
import '../widgets/placed_order_item_card.dart';
import 'bloc/placed_order_bloc.dart';

class PlacedOrderScreen extends StatelessWidget {
  const PlacedOrderScreen(this.order, {super.key});
  final PlacedOrder order;

  void _showPaymentHistory(BuildContext context, List<Payment> payments) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => PaymentHistoryBottomSheet(payments),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        label: order.createdAt.dmYHm,
        action: const Padding(
          padding: EdgeInsets.only(right: 15),
          child: AppCartButton(size: 28),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Column(
              children: [
                PlacedOrderCard(order, clickable: false),
                if (order.payments.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () =>
                          _showPaymentHistory(context, order.payments),
                      icon: const Icon(Icons.history, size: 20),
                      label: Text(S.current.paymentHistory),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.bg2,
                        foregroundColor: AppColors.dark,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          Expanded(
            child: BlocConsumer<PlacedOrderBloc, PlacedOrderState>(
                listener: (_, state) {
              if (state is PlacedOrderError && state.error.isAuth) {
                Navigator.of(context).popUntil((route) => route.isFirst);
                context.read<ProfileBloc>().add(ProfileStarted());
              }
            }, builder: (_, state) {
              if (state is PlacedOrderSuccess) {
                if (state.order.orderItems.isEmpty) {
                  return const AppEmpty(message: '');
                }
                final items = state.order.orderItems;
                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: items.length,
                  itemBuilder: (_, index) => PlacedOrderItemCard(items[index]),
                  separatorBuilder: (_, __) => const SizedBox(height: 16),
                );
              } else if (state is PlacedOrderError) {
                return AppErrorScreen(
                    message: state.error.message,
                    onPressed: () => context
                        .read<PlacedOrderBloc>()
                        .add(PlacedOrderStarted(order.id)));
              }
              return const AppLoader();
            }),
          ),
        ],
      ),
    );
  }
}
