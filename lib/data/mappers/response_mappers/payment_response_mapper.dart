import 'package:injectable/injectable.dart';

import '../../../domain/entities/order/payment.dart';
import '../../network/response_models/payment_response.dart';
import '../mapper.dart';

@lazySingleton
class PaymentResponseMapper extends Mapper<PaymentResponse, Payment> {
  @override
  Payment map(PaymentResponse? entity) => Payment(
        id: entity?.id ?? 0,
        amount: entity?.amount ?? 0,
        note: entity?.note ?? '',
        createdBy: entity?.createdBy ?? '',
        createdAt: DateTime.parse(entity?.createdAt ?? '').toLocal(),
      );
}
