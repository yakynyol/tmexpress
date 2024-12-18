import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../../data/local/hive_boxes.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/order/order.dart';
import '../../../../domain/entities/order/order_item.dart';
import '../../../../domain/entities/order/shipping_option.dart';
import '../../../../domain/errors/app_error.dart';
import '../../../../domain/usecases/order/create_order_usecase.dart';
import '../../../utils/constants.dart';

part 'cart_event.dart';
part 'cart_state.dart';

const _initialState = CartState(CartSt.initial, [], 0, shippingOption: null);

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this._createOrderUseCase, this._hiveBoxes) : super(_initialState) {
    _loadCart();

    on<CartItemAdded>((event, emit) async {
      final index = _items.indexWhere((item) => item == event.cartItem);
      if (index != -1) {
        _items[index] = _items[index].increase(event.cartItem.count);
      } else {
        _items.add(event.cartItem);
      }
      await _saveCart();
      emit(cartState());
    });

    on<CartItemRemoved>((event, emit) async {
      _items.remove(event.cartItem);
      await _saveCart();
      emit(cartState());
    });

    on<CartCleared>((event, emit) async {
      _items.clear();
      await _saveCart();
      emit(cartState());
    });

    on<CartShippingOptionChanged>((event, emit) async {
      _shippingOption = event.shippingOption;
      await _saveCart();
      emit(cartState());
    });

    on<CartOrderPlaced>((event, emit) async {
      emit(cartState(st: CartSt.loading));
      final orderItems = _items
          .map((item) => OrderItem(
              product: item.product.id,
              qty: item.count,
              size: item.size.id,
              color: item.color.id))
          .toList();
      final order = Order(
        orderitems: orderItems,
        shippingOption: _shippingOption?.id,
      );
      final r = await _createOrderUseCase(order);
      emit(r.fold(
        (error) => cartState(error: error),
        (r) => cartState(st: CartSt.done),
      ));
    });
  }

  Future<void> _loadCart() async {
    final box = _hiveBoxes.getBox(kCartBox);
    final cartData = box.get('cart');

    if (cartData == null || cartData is! Map) {
      return;
    }

    _items.clear();

    final itemsList = cartData['items'];

    if (itemsList is! List) return;

    for (final item in itemsList) {
      if (item is Map) {
        final convertedItem =
            _convertToStringKeysRecursively(item) as Map<String, dynamic>;
        final cartItem = CartItem.fromJson(convertedItem);
        _items.add(cartItem);
      }
    }
    emit(cartState());
  }

  Future<void> _saveCart() async {
    final box = _hiveBoxes.getBox(kCartBox);
    final itemsJson = _items.map((item) => item.toJson()).toList();
    await box.put('cart', {'items': itemsJson});
  }

  // Recursive function to convert Map<dynamic, dynamic> to Map<String, dynamic>
  dynamic _convertToStringKeysRecursively(dynamic item) {
    if (item is Map) {
      return item.map((key, value) => MapEntry(
            key.toString(),
            _convertToStringKeysRecursively(value),
          ));
    }
    if (item is List) {
      return item.map(_convertToStringKeysRecursively).toList();
    }
    return item;
  }

  CartState cartState({CartSt st = CartSt.initial, AppError? error}) =>
      CartState(
        st,
        List.from(_items),
        total,
        error: error,
        shippingOption: _shippingOption,
      );

  double get total {
    var t = 0.0;
    for (final c in _items) {
      t += c.count * c.price;
    }
    return t;
  }

  final _items = <CartItem>[];
  ShippingOption? _shippingOption;

  final CreateOrderUseCase _createOrderUseCase;
  final HiveBoxes _hiveBoxes;
}
