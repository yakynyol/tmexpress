import 'order_status.dart';
import 'payment.dart';
import 'payment_summary.dart';
import 'placed_order_item.dart';

class PlacedOrder {
  const PlacedOrder({
    required this.id,
    required this.user,
    required this.status,
    required this.totalPrice,
    required this.orderDiscount,
    required this.createdAt,
    required this.updatedAt,
    required this.orderItems,
    required this.payments,
    required this.paymentSummary,
  });

  final int id;
  final int user;
  final OrderStatus status;
  final double totalPrice;
  final double orderDiscount;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<PlacedOrderItem> orderItems;
  final List<Payment> payments;
  final PaymentSummary paymentSummary;
}
