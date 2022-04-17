import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entities/pagination.dart';
import '../../entities/product_mini.dart';
import '../../errors/app_error.dart';
import '../../repositories/product_repository.dart';
import '../usecase.dart';

@lazySingleton
class FetchHotProducts extends UseCase<Pagination<ProductMini>, String?> {
  FetchHotProducts(this._productRepository);
  final ProductRepository _productRepository;

  @override
  Future<Either<AppError, Pagination<ProductMini>>> call(String? next) {
    return _productRepository.fetchHotProducts(next);
  }
}