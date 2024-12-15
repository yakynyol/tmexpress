class PaymentSummary {
  const PaymentSummary({
    required this.totalPrice,
    required this.totalPaid,
    required this.remainingAmount,
  });

  final double totalPrice;
  final double totalPaid;
  final double remainingAmount;
}
