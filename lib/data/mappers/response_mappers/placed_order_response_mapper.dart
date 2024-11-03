import 'package:injectable/injectable.dart';

import '../../../domain/entities/order/placed_order.dart';
import '../../../presentation/utils/order_statuses.dart';
import '../../network/response_models/placed_order_response.dart';
import '../mapper.dart';
import 'placed_order_item_response_mapper.dart';

@lazySingleton
class PlacedOrderResponseMapper
    extends Mapper<PlacedOrderResponse, PlacedOrder> {
  PlacedOrderResponseMapper(this._placedOrderItemResponseMapper);
  final PlacedOrderItemResponseMapper _placedOrderItemResponseMapper;

  @override
  PlacedOrder map(PlacedOrderResponse? entity) => PlacedOrder(
      id: entity?.id ?? 0,
      user: entity?.user ?? 0,
      status: orderStatuses[entity?.status] ?? orderStatuses.values.toList()[0],
      totalPrice: entity?.totalPrice ?? 0,
      orderDiscount: entity?.orderDiscount ?? 0,
      createdAt: DateTime.parse(entity?.createdAt ?? '').toLocal(),
      updatedAt: DateTime.parse(entity?.updatedAt ?? '').toLocal(),
      orderItems: _placedOrderItemResponseMapper.mapList(entity?.orderitems));
}
