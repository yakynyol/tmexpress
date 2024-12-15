// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentSummaryResponse _$PaymentSummaryResponseFromJson(
        Map<String, dynamic> json) =>
    PaymentSummaryResponse(
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      totalPaid: (json['total_paid'] as num?)?.toDouble(),
      remainingAmount: (json['remaining_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PaymentSummaryResponseToJson(
        PaymentSummaryResponse instance) =>
    <String, dynamic>{
      'total_price': instance.totalPrice,
      'total_paid': instance.totalPaid,
      'remaining_amount': instance.remainingAmount,
    };
