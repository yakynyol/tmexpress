import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/entities/product/brand.dart';
import 'response_models/banner_response.dart';
import 'response_models/category_response.dart';
import 'response_models/media.dart';
import 'response_models/media_category.dart';
import 'response_models/pagination.dart';
import 'response_models/pagination_response.dart';
import 'response_models/product_mini_response.dart';
import 'response_models/product_response.dart';
import 'response_models/shipping_option_response.dart';
import 'response_models/subcategory_response.dart';
import 'response_models/tag_response.dart';
import 'response_models/token_response.dart';

part 'common_network.g.dart';

@RestApi(baseUrl: '')
abstract class CommonNetwork {
  factory CommonNetwork(Dio dio, {String baseUrl}) = _CommonNetwork;

  @GET('/api/products/categoryList/')
  Future<List<CategoryResponse>> fetchCategories();

  @GET('/api/products/bannerList/')
  Future<List<BannerResponse>> fetchBanners();

  @GET('/api/products/tagsList/')
  Future<List<TagResponse>> fetchTags();

  @GET('/api/products/subCategoryProducts/{id}/')
  Future<PaginationResponse<ProductMiniResponse>> fetchSubcategoryProducts(
    @Path('id') int id,
    @Query('offset') String? offset,
    @Query('limit') int limit,
    @Query('orderBy') String orderBy, {
    @Query('isDiscounted') int? isDiscounted,
    @Query('sizes') String? sizes,
  });

  @GET('/api/products/productsSearchView/')
  Future<PaginationResponse<ProductMiniResponse>> searchProducts(
    @Query('search_text') String query,
    @Query('offset') String? offset,
    @Query('limit') int limit,
    @Query('is_random') int? isRandom,
    @Query('country') int? country,
    @Query('brand') int? brand,
  );

  @GET('/api/products/tagProudcts/{id}/')
  Future<PaginationResponse<ProductMiniResponse>> fetchTagProducts(
    @Path('id') int id,
    @Query('offset') String? offset,
    @Query('limit') int limit,
    @Query('orderBy') String orderBy,
  );

  @GET('/api/products/categoryProducts/{id}/')
  Future<PaginationResponse<ProductMiniResponse>> fetchCategoryProducts(
    @Path('id') int id,
    @Query('offset') String? offset,
    @Query('limit') int limit,
    @Query('orderBy') String orderBy,
  );

  @GET('/api/products/groupProducts/{id}/')
  Future<PaginationResponse<ProductMiniResponse>> fetchGroupProducts(
    @Path('id') int id,
    @Query('offset') String? offset,
    @Query('limit') int limit,
    @Query('orderBy') String orderBy,
  );

  @GET('/api/products/productsOrderByHotList/')
  Future<PaginationResponse<ProductMiniResponse>> fetchHotProducts(
    @Query('offset') String? offset,
    @Query('limit') int limit,
  );

  @GET('/api/products/brands/')
  Future<PaginationResponse<Brand>> fetchBrands(
    @Query('offset') String? offset,
    @Query('limit') int limit,
  );

  @GET('/api/products/singleProduct/{id}/')
  Future<ProductResponse> fetchProduct(
    @Path('id') int id,
  );

  @POST('/api/auth/login/')
  Future<TokenResponse> auth(
    @Field('username') String phone,
    @Field('password') int code,
    @Query('userId') String? userId,
  );

  @POST('/api/auth/start-sms-sign-in/')
  Future<void> startSMSSignIn(
    @Field('username') String phone,
    @Field('referral') String? referrer,
  );

  @POST('/api/auth/sign-in-with-sms/')
  Future<TokenResponse> signInWithSMS(
    @Field('username') String phone,
    @Field('password') String code,
  );

  @GET('/api/products/subCategorySizes/{id}/')
  Future<SubcategoryResponse> fetchSubcategorySizes(
    @Path() int id,
  );

  @GET('/api/order/shipping-options/')
  Future<PaginationResponse<ShippingOptionResponse>> fetchShippingOptions(
    @Query('limit') int limit,
  );

  @GET('/api/products/media/categories/')
  Future<List<MediaCategory>> fetchMediaCategories();

  @GET('/api/products/media/')
  Future<Pagination<Media>> fetchMediaList(
    @Query('offset') String? offset,
    @Query('limit') int limit,
    @Query('category') int? categoryId,
  );

  @GET('/api/products/media/{id}')
  Future<Media> fetchMedia(
    @Path('id') int id,
  );
}
