import 'package:json_annotation/json_annotation.dart';

part 'payment_summary_response.g.dart';

@JsonSerializable()
class PaymentSummaryResponse {
  const PaymentSummaryResponse({
    this.totalPrice,
    this.totalPaid,
    this.remainingAmount,
  });

  factory PaymentSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentSummaryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentSummaryResponseToJson(this);

  @JsonKey(name: 'total_price')
  final double? totalPrice;
  @JsonKey(name: 'total_paid')
  final double? totalPaid;
  @JsonKey(name: 'remaining_amount')
  final double? remainingAmount;
}
