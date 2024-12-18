import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../app/generated/l10n.dart';
import '../../../domain/entities/product/brand.dart';
import '../../utils/constants.dart';
import '../../widgets/app_empty.dart';
import '../../widgets/app_error.dart';
import '../../widgets/app_loader.dart';
import '../../widgets/brand_card.dart';
import 'bloc/brands_bloc.dart';

class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  PagingController<String?, Brand> pagingController =
      PagingController(firstPageKey: null);
  int page = 1;

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener((next) {
      context.read<BrandsBloc>().add(BrandsRequested(next));
    });
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<BrandsBloc, BrandsState>(
        listener: (_, state) {
          if (state is BrandsLoadSuccess) {
            if (state.brands.length < kLimit) {
              pagingController.appendLastPage(state.brands);
            } else {
              pagingController.appendPage(state.brands, state.next);
            }
          } else if (state is BrandsLoadError) {
            pagingController.error = state.message;
          }
        },
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: PagedSliverGrid(
                pagingController: pagingController,
                builderDelegate: PagedChildBuilderDelegate<Brand>(
                  itemBuilder: (context, brand, index) =>
                      BrandCard(brand: brand),
                  firstPageErrorIndicatorBuilder: (_) => AppErrorScreen(
                    message: pagingController.error,
                    onPressed: pagingController.retryLastFailedRequest,
                  ),
                  newPageErrorIndicatorBuilder: (_) => Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                    child: AppErrorScreen(
                      message: pagingController.error,
                      onPressed: pagingController.retryLastFailedRequest,
                    ),
                  ),
                  firstPageProgressIndicatorBuilder: (_) => const AppLoader(),
                  newPageProgressIndicatorBuilder: (_) => const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
                      child: AppLoader()),
                  noItemsFoundIndicatorBuilder: (_) =>
                      AppEmpty(message: S.current.noProducts),
                ),
                showNewPageProgressIndicatorAsGridChild: false,
                showNewPageErrorIndicatorAsGridChild: false,
                showNoMoreItemsIndicatorAsGridChild: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .7,
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 600 ? 6 : 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
