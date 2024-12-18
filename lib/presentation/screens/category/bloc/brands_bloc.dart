import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/product/brand.dart';
import '../../../../domain/usecases/products/fetch_brands_usecase.dart';

part 'brands_event.dart';
part 'brands_state.dart';

@injectable
class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {
  BrandsBloc(this._searchProducts) : super(BrandsInitial()) {
    on<BrandsRequested>((event, emit) async {
      final r = await _searchProducts(event.next);
      emit(r.fold(
        (error) => BrandsLoadError(error.message),
        (pagination) {
          return BrandsLoadSuccess(
            brands: pagination.items,
            next: pagination.next,
          );
        },
      ));
    });
  }

  final FetchBrandsUseCase _searchProducts;
}
