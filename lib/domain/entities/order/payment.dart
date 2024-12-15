class Payment {
  const Payment({
    required this.id,
    required this.amount,
    required this.note,
    required this.createdBy,
    required this.createdAt,
  });

  final int id;
  final double amount;
  final String note;
  final String createdBy;
  final DateTime createdAt;
}