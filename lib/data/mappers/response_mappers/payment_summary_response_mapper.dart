import 'package:injectable/injectable.dart';

import '../../../domain/entities/order/payment_summary.dart';
import '../../network/response_models/payment_summary_response.dart';
import '../mapper.dart';

@lazySingleton
class PaymentSummaryResponseMapper
    extends Mapper<PaymentSummaryResponse, PaymentSummary> {
  @override
  PaymentSummary map(PaymentSummaryResponse? entity) => PaymentSummary(
        totalPrice: entity?.totalPrice ?? 0,
        totalPaid: entity?.totalPaid ?? 0,
        remainingAmount: entity?.remainingAmount ?? 0,
      );
}
