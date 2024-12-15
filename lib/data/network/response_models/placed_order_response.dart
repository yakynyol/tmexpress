import 'package:json_annotation/json_annotation.dart';

import 'payment_response.dart';
import 'payment_summary_response.dart';
import 'placed_order_item_response.dart';

part 'placed_order_response.g.dart';

@JsonSerializable()
class PlacedOrderResponse {
  const PlacedOrderResponse({
    this.id,
    this.user,
    this.status,
    this.totalPrice,
    this.orderDiscount,
    this.createdAt,
    this.updatedAt,
    this.orderitems,
    this.payments,
    this.paymentSummary,
  });

  factory PlacedOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacedOrderResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlacedOrderResponseToJson(this);

  final int? id;
  final int? user;
  final String? status;
  final double? totalPrice;
  final double? orderDiscount;
  final String? createdAt;
  final String? updatedAt;
  final List<PlacedOrderItemResponse>? orderitems;
  final List<PaymentResponse>? payments;
  @JsonKey(name: 'payment_summary')
  final PaymentSummaryResponse? paymentSummary;
}
