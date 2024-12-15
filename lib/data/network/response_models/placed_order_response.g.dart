// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placed_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacedOrderResponse _$PlacedOrderResponseFromJson(Map<String, dynamic> json) =>
    PlacedOrderResponse(
      id: (json['id'] as num?)?.toInt(),
      user: (json['user'] as num?)?.toInt(),
      status: json['status'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      orderDiscount: (json['orderDiscount'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      orderitems: (json['orderitems'] as List<dynamic>?)
          ?.map((e) =>
              PlacedOrderItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentSummary: json['payment_summary'] == null
          ? null
          : PaymentSummaryResponse.fromJson(
              json['payment_summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlacedOrderResponseToJson(
        PlacedOrderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'status': instance.status,
      'totalPrice': instance.totalPrice,
      'orderDiscount': instance.orderDiscount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'orderitems': instance.orderitems?.map((e) => e.toJson()).toList(),
      'payments': instance.payments?.map((e) => e.toJson()).toList(),
      'payment_summary': instance.paymentSummary?.toJson(),
    };
