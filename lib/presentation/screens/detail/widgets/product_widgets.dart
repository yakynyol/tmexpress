import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide Size;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/generated/l10n.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/product/product.dart';
import '../../../../domain/entities/product/size.dart';
import '../../../../domain/usecases/products/search_product_usecase.dart';
import '../../../theme/app_theme.dart';
import '../../../utils/app_flash.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_image.dart';
import '../../cart/bloc/cart_bloc.dart';
import '../../cart/widgets/cart_item_count.w.dart';
import '../../home/search/search_page.dart';
import '../../profile/bloc/profile_bloc.dart';
import '../bloc/detail_bloc.dart';
import 'color.w.dart';
import 'photo_view_page.dart';
import 'price.w.dart';
import 'video_player_screen.dart';

late Product _product;

class ProductWidgets {
  ProductWidgets(this.state) {
    _product = state.product;
  }
  final DetailLoadSuccess state;

  Widget addToCardButton(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, cart) {
        final cartItem = cart.items.firstWhereOrNull((e) =>
            e.product.id == state.product.id &&
            (state.selectedColor?.contains(e.color) == true ||
                state.product.productImages.values.length == 1) &&
            (e.size == state.selectedSize || state.product.size.isEmpty));
        return Padding(
          padding: const EdgeInsets.fromLTRB(10, 4, 20, 20),
          child: Row(
            children: [
              if (cartItem != null) CartItemCountW(cartItem),
              const SizedBox(width: 10),
              Expanded(
                child: AppButton(
                  label: cartItem != null
                      ? S.current.removeFromCart
                      : S.current.addToCart,
                  onPressed: cartItem != null
                      ? () {
                          context
                              .read<CartBloc>()
                              .add(CartItemRemoved(cartItem));
                          AppFlash.toast(
                              context: context,
                              message: S.current.removedFromCart,
                              isError: true);
                        }
                      : () {
                          final multiColor =
                              state.product.productImages.length > 1;
                          final noSize = state.product.size.isEmpty;
                          final multiSize = state.product.size.length > 1;
                          if (state.selectedColor == null && multiColor) {
                            AppFlash.toast(
                                context: context,
                                message: S.current.selectColor,
                                isError: true);
                          } else if (state.selectedSize == null && multiSize) {
                            AppFlash.toast(
                                context: context,
                                message: S.current.selectSize,
                                isError: true);
                          } else if ((state.selectedColor != null ||
                                  !multiColor) &&
                              (state.selectedSize != null || noSize)) {
                            final cartItem = CartItem(
                              product: _product,
                              count: 1,
                              size: state.selectedSize ??
                                  const Size(id: 196, title: '-'),
                              color: state.selectedColor?.first ??
                                  state
                                      .product.productImages.values.first.first,
                              price: _product.normalPriceByCount(1),
                              expressPrice: _product.normalPriceByCount(1),
                            );
                            context
                                .read<CartBloc>()
                                .add(CartItemAdded(cartItem));
                            AppFlash.toast(
                                context: context,
                                message: S.current.addedToCart,
                                isError: true);
                          }
                        },
                  iconFile: 'basket.png',
                  type: cartItem != null ? ButtonType.green : ButtonType.red,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget get title => Row(
        children: [
          Expanded(
            child: Text(
              state.product.title,
              style: AppTextStyle.bold20,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Image.asset('assets/icons/favorite.png',
              color: Colors.amber, width: 22),
          const SizedBox(width: 4),
          Text(
            state.product.ourRating.toStringAsFixed(1),
            style: AppTextStyle.bold16,
          ),
        ],
      );

  // Widget share(BuildContext context) => Row(
  //       children: [
  //         Expanded(
  //           child: AppButton(
  //             label: S.current.share,
  //             type: ButtonType.outline,
  //             iconFile: 'share.png',
  //             isLoading: state.detailLoad == DetailLoad.share,
  //             onPressed: () =>
  //                 context.read<DetailBloc>().add(DetailProductShared()),
  //           ),
  //         ),
  //         const SizedBox(width: 12),
  //         AppButton(
  //           label: null,
  //           type: ButtonType.outline,
  //           iconFile: 'idea.png',
  //           onPressed: () => showDialog<void>(
  //             context: context,
  //             builder: (_) => AppDialog(
  //               title: S.current.share,
  //               content: S.current.shareInformation(kReferralProductPercent),
  //               positiveButtonLabel: S.current.ok,
  //               showNegativeButton: false,
  //             ),
  //           ),
  //         ),
  //       ],
  //     );

  Widget like(BuildContext context) => AppButton(
        label: state.product.isLiked
            ? S.current.removeFromFavorites
            : S.current.addToFavorites,
        type: state.product.isLiked ? ButtonType.red : ButtonType.outline,
        iconFile: 'like.png',
        onPressed: () {
          if (context.read<ProfileBloc>().profile != null) {
            context.read<DetailBloc>().add(DetailProductLikeToggled());
          } else {
            AppFlash.bigToast(
                context: context, message: S.current.signInToAddToFavorites);
          }
        },
      );

  Widget video(BuildContext context) => AppButton(
        label: S.current.watchVideo,
        type: ButtonType.outline,
        iconFile: 'play.png',
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => VideoPlayerScreen(url: state.product.video),
          ),
        ),
      );

  List<Widget> brandAndCountry(BuildContext context) => [
        if (_product.country != null || _product.brand != null) ...[
          Row(
            children: [
              if (_product.brand != null)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 3),
                      Text('${S.current.brand}:', style: AppTextStyle.bold16),
                      const SizedBox(height: 4),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                              builder: (_) => SearchPage(SearchParams(
                                  query: '',
                                  brandId: _product.brand!.id,
                                  title: _product.brand!.name))),
                        ),
                        child: Row(
                          children: [
                            AppImage(
                              _product.brand!.image,
                              width: 32,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                _product.brand!.name,
                                style: AppTextStyle.grey16,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 12)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (_product.country != null)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${S.current.country}:', style: AppTextStyle.bold16),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                              builder: (_) => SearchPage(SearchParams(
                                  query: '',
                                  countryId: _product.country!.id,
                                  title: _product.country!.title))),
                        ),
                        child: Row(
                          children: [
                            AppImage(
                              _product.country!.flag,
                              width: 24,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            const SizedBox(width: 6),
                            Text(_product.country!.title,
                                style: AppTextStyle.grey16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 20),
        ]
      ];

  List<Widget> description() => [
        if (_product.description.isNotEmpty) ...[
          Text('${S.current.description}:', style: AppTextStyle.bold16),
          const SizedBox(height: 8),
          Text(_product.description, style: AppTextStyle.grey16),
          const SizedBox(height: 20),
        ],
      ];
  List<Widget> id() => [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text('${S.current.code}: ${_product.id}',
              style: AppTextStyle.bold16),
        ),
      ];

  List<Widget> prices() => [
        Text('${S.current.productPrice}:', style: AppTextStyle.bold16),
        const SizedBox(height: 8),
        Row(
          children: [
            PriceW('${S.current.retailPrice}:', _product.normalPrice).exp,
            PriceW(
              '${S.current.productPriceWholesale} '
              '(${S.current.productWholesaleDesc(_product.wholesaleLimit)}):',
              _product.wholesaleLimit > 0 || _product.normalPriceW == 0
                  ? _product.normalPrice
                  : _product.normalPriceW,
            ).exp,
          ],
        ),
        const SizedBox(height: 20),
      ];

  List<Widget> sizeTable(BuildContext context) => [
        if (state.product.sizeTable.isNotEmpty) ...[
          Text('${S.current.sizeTable}:', style: AppTextStyle.bold16),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => PhotoViewPage(
                  image: state.product.sizeTable,
                  title: S.current.sizeTable,
                ),
              ),
            ),
            child: AppImage(state.product.sizeTable),
          ),
          const SizedBox(height: 20),
        ],
      ];

  List<Widget> images() {
    final productImages = state.product.productImages.values.toList();
    return [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 2),
        child: Text(S.current.productColors, style: AppTextStyle.bold16),
      ),
      SizedBox(
        height: 64 + 12,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20 - 6),
          physics: const BouncingScrollPhysics(),
          itemCount: productImages.length,
          itemBuilder: (context, index) => ColorW(
            productImages[index],
            isSelected: state.selectedColor == productImages[index],
          ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    ];
  }
}
