part of 'brands_bloc.dart';

abstract class BrandsEvent {
  const BrandsEvent();
}

class BrandsRequested extends BrandsEvent {
  const BrandsRequested(this.next);
  final String? next;
}
