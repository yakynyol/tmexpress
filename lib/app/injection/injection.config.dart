// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart' as _i695;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/error/error_mapper.dart' as _i394;
import '../../data/error/exception_handler.dart' as _i285;
import '../../data/local/hive_boxes.dart' as _i450;
import '../../data/mappers/response_mappers/banner_response_mapper.dart'
    as _i762;
import '../../data/mappers/response_mappers/category_response_mapper.dart'
    as _i754;
import '../../data/mappers/response_mappers/group_response_mapper.dart'
    as _i573;
import '../../data/mappers/response_mappers/image_response_mapper.dart'
    as _i152;
import '../../data/mappers/response_mappers/media_pagination_response_mapper.dart'
    as _i291;
import '../../data/mappers/response_mappers/payment_response_mapper.dart'
    as _i712;
import '../../data/mappers/response_mappers/payment_summary_response_mapper.dart'
    as _i1029;
import '../../data/mappers/response_mappers/placed_order_item_response_mapper.dart'
    as _i665;
import '../../data/mappers/response_mappers/placed_order_response_mapper.dart'
    as _i701;
import '../../data/mappers/response_mappers/product_mini_response_mapper.dart'
    as _i362;
import '../../data/mappers/response_mappers/product_pagination_response_mapper.dart'
    as _i319;
import '../../data/mappers/response_mappers/product_response_mapper.dart'
    as _i311;
import '../../data/mappers/response_mappers/profile_response_mapper.dart'
    as _i651;
import '../../data/mappers/response_mappers/shipping_option_pagination_response_mapper.dart'
    as _i827;
import '../../data/mappers/response_mappers/shipping_option_response_mapper.dart'
    as _i155;
import '../../data/mappers/response_mappers/size_response_mapper.dart' as _i313;
import '../../data/mappers/response_mappers/subcategory_response_mapper.dart'
    as _i87;
import '../../data/mappers/response_mappers/tag_response_mapper.dart' as _i580;
import '../../data/mappers/response_mappers/token_response_mapper.dart'
    as _i620;
import '../../data/network/auth_interceptor.dart' as _i354;
import '../../data/network/auth_network.dart' as _i766;
import '../../data/network/common_network.dart' as _i452;
import '../../data/repositories/media_repository_impl.dart' as _i872;
import '../../data/repositories/order_respository_impl.dart' as _i1014;
import '../../data/repositories/preferences_repository_impl.dart' as _i88;
import '../../data/repositories/product_repository_impl.dart' as _i876;
import '../../data/repositories/profile_repository_impl.dart' as _i813;
import '../../domain/repositories/media_repository.dart' as _i777;
import '../../domain/repositories/order_repository.dart' as _i507;
import '../../domain/repositories/preferences_repository.dart' as _i90;
import '../../domain/repositories/product_repository.dart' as _i933;
import '../../domain/repositories/profile_repository.dart' as _i47;
import '../../domain/usecases/order/create_order_usecase.dart' as _i875;
import '../../domain/usecases/order/fetch_orders_usecase.dart' as _i169;
import '../../domain/usecases/order/fetch_shipping_options.dart' as _i214;
import '../../domain/usecases/order/get_placed_order.dart' as _i881;
import '../../domain/usecases/preferences/get_bool_preference_usecase.dart'
    as _i1017;
import '../../domain/usecases/preferences/get_double_preference_usecase.dart'
    as _i599;
import '../../domain/usecases/preferences/get_int_preference_usecase.dart'
    as _i181;
import '../../domain/usecases/preferences/get_string_preference_usecase.dart'
    as _i597;
import '../../domain/usecases/preferences/set_preference_usecase.dart' as _i121;
import '../../domain/usecases/products/fetch_brands_usecase.dart' as _i398;
import '../../domain/usecases/products/fetch_categories_usecase.dart' as _i1051;
import '../../domain/usecases/products/fetch_favorite_products_usecase.dart'
    as _i734;
import '../../domain/usecases/products/fetch_home_usecase.dart' as _i343;
import '../../domain/usecases/products/fetch_hot_products.dart' as _i504;
import '../../domain/usecases/products/fetch_product_usecase.dart' as _i96;
import '../../domain/usecases/products/fetch_products_usecase.dart' as _i996;
import '../../domain/usecases/products/fetch_subcategory_sizes.dart' as _i604;
import '../../domain/usecases/products/like_product_usecase.dart' as _i594;
import '../../domain/usecases/products/search_product_usecase.dart' as _i350;
import '../../domain/usecases/products/share_product_usecase.dart' as _i606;
import '../../domain/usecases/profile/auth_usecase.dart' as _i190;
import '../../domain/usecases/profile/edit_profile_usecase.dart' as _i493;
import '../../domain/usecases/profile/fetch_profile_usecase.dart' as _i1012;
import '../../presentation/screens/auth/bloc/auth_bloc.dart' as _i253;
import '../../presentation/screens/cart/bloc/cart_bloc.dart' as _i416;
import '../../presentation/screens/category/bloc/brands_bloc.dart' as _i422;
import '../../presentation/screens/category/bloc/category_bloc.dart' as _i216;
import '../../presentation/screens/detail/bloc/detail_bloc.dart' as _i309;
import '../../presentation/screens/home/bloc/home_bloc.dart' as _i13;
import '../../presentation/screens/home/search/bloc/search_bloc.dart' as _i1072;
import '../../presentation/screens/hot/bloc/hot_bloc.dart' as _i445;
import '../../presentation/screens/main/bloc/main_bloc.dart' as _i817;
import '../../presentation/screens/media/bloc/media_list_bloc.dart' as _i527;
import '../../presentation/screens/media/cubit/media_category_cubit.dart'
    as _i322;
import '../../presentation/screens/media/media_detail/cubit/media_cubit.dart'
    as _i983;
import '../../presentation/screens/products/bloc/filter/filter_bloc.dart'
    as _i785;
import '../../presentation/screens/products/bloc/products_bloc.dart' as _i304;
import '../../presentation/screens/profile/bloc/profile_bloc.dart' as _i810;
import '../../presentation/screens/profile/edit_profile/bloc/edit_profile_bloc.dart'
    as _i1064;
import '../../presentation/screens/profile/placed_order/bloc/placed_order_bloc.dart'
    as _i765;
import '../../presentation/screens/profile/placed_orders/bloc/placed_orders_bloc.dart'
    as _i537;
import '../../presentation/screens/shipping_options/bloc/shipping_options_bloc.dart'
    as _i535;
import '../../presentation/screens/start/bloc/start_bloc.dart' as _i577;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i817.MainBloc>(() => _i817.MainBloc());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i986.Box<Map<dynamic, dynamic>>>(
        () => registerModule.favoritesBox);
    gh.lazySingleton<_i695.CacheOptions>(() => registerModule.cacheOption);
    gh.lazySingleton<_i452.CommonNetwork>(() => registerModule.commonNetwork);
    gh.lazySingleton<_i766.AuthNetwork>(() => registerModule.authNetwork);
    gh.lazySingleton<_i450.HiveBoxes>(() => _i450.HiveBoxes());
    gh.lazySingleton<_i651.ProfileResponseMapper>(
        () => _i651.ProfileResponseMapper());
    gh.lazySingleton<_i620.TokenResponseMapper>(
        () => _i620.TokenResponseMapper());
    gh.lazySingleton<_i87.SubcategoryResponseMapper>(
        () => _i87.SubcategoryResponseMapper());
    gh.lazySingleton<_i362.ProductMiniResponseMapper>(
        () => _i362.ProductMiniResponseMapper());
    gh.lazySingleton<_i313.SizeResponseMapper>(
        () => _i313.SizeResponseMapper());
    gh.lazySingleton<_i762.BannerResponseMapper>(
        () => _i762.BannerResponseMapper());
    gh.lazySingleton<_i155.ShippingOptionResponseMapper>(
        () => _i155.ShippingOptionResponseMapper());
    gh.lazySingleton<_i152.ImageResponseMapper>(
        () => _i152.ImageResponseMapper());
    gh.lazySingleton<_i394.ErrorMapper>(() => _i394.ErrorMapper());
    gh.lazySingleton<_i712.PaymentResponseMapper>(
        () => _i712.PaymentResponseMapper());
    gh.lazySingleton<_i1029.PaymentSummaryResponseMapper>(
        () => _i1029.PaymentSummaryResponseMapper());
    gh.lazySingleton<_i580.TagResponseMapper>(
        () => _i580.TagResponseMapper(gh<_i362.ProductMiniResponseMapper>()));
    gh.lazySingleton<_i90.PreferencesRepository>(
        () => _i88.PreferencesRepositoryImpl());
    gh.lazySingleton<_i573.GroupResponseMapper>(
        () => _i573.GroupResponseMapper(gh<_i87.SubcategoryResponseMapper>()));
    gh.lazySingleton<_i291.ProductPaginationResponseMapper>(() =>
        _i291.ProductPaginationResponseMapper(
            gh<_i362.ProductMiniResponseMapper>()));
    gh.lazySingleton<_i319.ProductPaginationResponseMapper>(() =>
        _i319.ProductPaginationResponseMapper(
            gh<_i362.ProductMiniResponseMapper>()));
    gh.lazySingleton<_i665.PlacedOrderItemResponseMapper>(
        () => _i665.PlacedOrderItemResponseMapper(
              gh<_i362.ProductMiniResponseMapper>(),
              gh<_i313.SizeResponseMapper>(),
              gh<_i152.ImageResponseMapper>(),
            ));
    gh.lazySingleton<_i311.ProductResponseMapper>(
        () => _i311.ProductResponseMapper(
              gh<_i152.ImageResponseMapper>(),
              gh<_i313.SizeResponseMapper>(),
            ));
    gh.lazySingleton<_i285.ExceptionHandler>(
        () => _i285.ExceptionHandler(gh<_i394.ErrorMapper>()));
    gh.lazySingleton<_i701.PlacedOrderResponseMapper>(
        () => _i701.PlacedOrderResponseMapper(
              gh<_i665.PlacedOrderItemResponseMapper>(),
              gh<_i712.PaymentResponseMapper>(),
              gh<_i1029.PaymentSummaryResponseMapper>(),
            ));
    gh.lazySingleton<_i181.GetIntPreferenceUseCase>(
        () => _i181.GetIntPreferenceUseCase(gh<_i90.PreferencesRepository>()));
    gh.lazySingleton<_i597.GetStringPreferenceUseCase>(() =>
        _i597.GetStringPreferenceUseCase(gh<_i90.PreferencesRepository>()));
    gh.lazySingleton<_i827.ShippingOptionPaginationResponseMapper>(() =>
        _i827.ShippingOptionPaginationResponseMapper(
            gh<_i155.ShippingOptionResponseMapper>()));
    gh.lazySingleton<_i354.AuthInterceptor>(
        () => _i354.AuthInterceptor(gh<_i90.PreferencesRepository>()));
    gh.lazySingleton<_i1017.GetBoolPreferenceUseCase>(() =>
        _i1017.GetBoolPreferenceUseCase(gh<_i90.PreferencesRepository>()));
    gh.lazySingleton<_i121.SetPreferenceUseCase>(
        () => _i121.SetPreferenceUseCase(gh<_i90.PreferencesRepository>()));
    gh.lazySingleton<_i599.GetDoublePreferenceUseCase>(() =>
        _i599.GetDoublePreferenceUseCase(gh<_i90.PreferencesRepository>()));
    gh.lazySingleton<_i754.CategoryResponseMapper>(
        () => _i754.CategoryResponseMapper(gh<_i573.GroupResponseMapper>()));
    gh.lazySingleton<_i507.OrderRepository>(() => _i1014.OrderRepositoryImpl(
          gh<_i285.ExceptionHandler>(),
          gh<_i766.AuthNetwork>(),
          gh<_i701.PlacedOrderResponseMapper>(),
          gh<_i452.CommonNetwork>(),
          gh<_i827.ShippingOptionPaginationResponseMapper>(),
        ));
    gh.lazySingleton<_i933.ProductRepository>(() => _i876.ProductRepositoryImpl(
          gh<_i285.ExceptionHandler>(),
          gh<_i452.CommonNetwork>(),
          gh<_i766.AuthNetwork>(),
          gh<_i754.CategoryResponseMapper>(),
          gh<_i762.BannerResponseMapper>(),
          gh<_i580.TagResponseMapper>(),
          gh<_i319.ProductPaginationResponseMapper>(),
          gh<_i311.ProductResponseMapper>(),
          gh<_i313.SizeResponseMapper>(),
          gh<_i986.Box<Map<dynamic, dynamic>>>(),
        ));
    gh.lazySingleton<_i777.MediaRepository>(() => _i872.MediaRepositoryImpl(
          gh<_i285.ExceptionHandler>(),
          gh<_i452.CommonNetwork>(),
          gh<_i986.Box<Map<dynamic, dynamic>>>(),
        ));
    gh.lazySingleton<_i398.FetchBrandsUseCase>(
        () => _i398.FetchBrandsUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i996.FetchProductsUseCase>(
        () => _i996.FetchProductsUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i343.FetchHomeUseCase>(
        () => _i343.FetchHomeUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i96.FetchProductUseCase>(
        () => _i96.FetchProductUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i350.SearchProductsUseCase>(
        () => _i350.SearchProductsUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i504.FetchHotProducts>(
        () => _i504.FetchHotProducts(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i604.FetchSubcategorySizesUseCase>(() =>
        _i604.FetchSubcategorySizesUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i606.ShareProductUseCase>(
        () => _i606.ShareProductUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i594.LikeProductUseCase>(
        () => _i594.LikeProductUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i734.FetchFavoriteProductsUseCase>(() =>
        _i734.FetchFavoriteProductsUseCase(gh<_i933.ProductRepository>()));
    gh.lazySingleton<_i1051.FetchCategoriesUseCase>(
        () => _i1051.FetchCategoriesUseCase(gh<_i933.ProductRepository>()));
    gh.factory<_i322.MediaCategoryCubit>(
        () => _i322.MediaCategoryCubit(gh<_i777.MediaRepository>()));
    gh.factory<_i983.MediaCubit>(
        () => _i983.MediaCubit(gh<_i777.MediaRepository>()));
    gh.factory<_i527.MediaListBloc>(
        () => _i527.MediaListBloc(gh<_i777.MediaRepository>()));
    gh.factory<_i13.HomeBloc>(
        () => _i13.HomeBloc(gh<_i343.FetchHomeUseCase>()));
    gh.lazySingleton<_i881.GetPlacedOrderUseCase>(
        () => _i881.GetPlacedOrderUseCase(gh<_i507.OrderRepository>()));
    gh.lazySingleton<_i169.FetchPlacedOrdersUseCase>(
        () => _i169.FetchPlacedOrdersUseCase(gh<_i507.OrderRepository>()));
    gh.lazySingleton<_i214.FetchShippingOptions>(
        () => _i214.FetchShippingOptions(gh<_i507.OrderRepository>()));
    gh.lazySingleton<_i875.CreateOrderUseCase>(
        () => _i875.CreateOrderUseCase(gh<_i507.OrderRepository>()));
    gh.lazySingleton<_i47.ProfileRepository>(() => _i813.ProfileRepositoryImpl(
          gh<_i285.ExceptionHandler>(),
          gh<_i452.CommonNetwork>(),
          gh<_i620.TokenResponseMapper>(),
          gh<_i766.AuthNetwork>(),
          gh<_i651.ProfileResponseMapper>(),
          gh<_i90.PreferencesRepository>(),
        ));
    gh.factory<_i304.ProductsBloc>(
        () => _i304.ProductsBloc(gh<_i996.FetchProductsUseCase>()));
    gh.factory<_i216.CategoryBloc>(
        () => _i216.CategoryBloc(gh<_i1051.FetchCategoriesUseCase>()));
    gh.factory<_i577.StartBloc>(() => _i577.StartBloc(
          gh<_i1017.GetBoolPreferenceUseCase>(),
          gh<_i597.GetStringPreferenceUseCase>(),
          gh<_i121.SetPreferenceUseCase>(),
        ));
    gh.factory<_i537.PlacedOrdersBloc>(
        () => _i537.PlacedOrdersBloc(gh<_i169.FetchPlacedOrdersUseCase>()));
    gh.factory<_i1072.SearchBloc>(
        () => _i1072.SearchBloc(gh<_i350.SearchProductsUseCase>()));
    gh.lazySingleton<_i190.AuthUseCase>(
        () => _i190.AuthUseCase(gh<_i47.ProfileRepository>()));
    gh.factory<_i416.CartBloc>(() => _i416.CartBloc(
          gh<_i875.CreateOrderUseCase>(),
          gh<_i450.HiveBoxes>(),
        ));
    gh.factory<_i785.FilterBloc>(
        () => _i785.FilterBloc(gh<_i604.FetchSubcategorySizesUseCase>()));
    gh.factory<_i765.PlacedOrderBloc>(
        () => _i765.PlacedOrderBloc(gh<_i881.GetPlacedOrderUseCase>()));
    gh.factory<_i535.ShippingOptionsBloc>(
        () => _i535.ShippingOptionsBloc(gh<_i214.FetchShippingOptions>()));
    gh.factory<_i309.DetailBloc>(() => _i309.DetailBloc(
          gh<_i96.FetchProductUseCase>(),
          gh<_i594.LikeProductUseCase>(),
        ));
    gh.factory<_i422.BrandsBloc>(
        () => _i422.BrandsBloc(gh<_i398.FetchBrandsUseCase>()));
    gh.factory<_i445.HotBloc>(
        () => _i445.HotBloc(gh<_i350.SearchProductsUseCase>()));
    gh.factory<_i253.AuthBloc>(
        () => _i253.AuthBloc(gh<_i47.ProfileRepository>()));
    gh.lazySingleton<_i493.EditProfileUseCase>(
        () => _i493.EditProfileUseCase(gh<_i47.ProfileRepository>()));
    gh.lazySingleton<_i1012.FetchProfileUseCase>(
        () => _i1012.FetchProfileUseCase(gh<_i47.ProfileRepository>()));
    gh.factory<_i1064.EditProfileBloc>(
        () => _i1064.EditProfileBloc(gh<_i493.EditProfileUseCase>()));
    gh.factory<_i810.ProfileBloc>(() => _i810.ProfileBloc(
          gh<_i597.GetStringPreferenceUseCase>(),
          gh<_i1012.FetchProfileUseCase>(),
          gh<_i121.SetPreferenceUseCase>(),
          gh<_i47.ProfileRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
