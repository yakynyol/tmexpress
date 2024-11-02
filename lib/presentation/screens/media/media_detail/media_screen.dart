import 'package:flutter/material.dart';

import '../../../../data/network/response_models/media.dart';
import '../../../../domain/entities/product/tag.dart';
import '../../../theme/app_theme.dart';
import '../../../widgets/app_banner_b.dart';
import '../../../widgets/app_cart_button.dart';
import '../../../widgets/app_image.dart';
import '../../../widgets/primary_app_bar.dart';
import '../../home/widgets/tag.w.dart';
import '../widgets/hls_player.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({required this.media, super.key});
  final Media media;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        label: media.title ?? '',
        action: const Padding(
          padding: EdgeInsets.only(right: 15),
          child: AppCartButton(size: 28),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            if (media.hls != null)
              AspectRatio(
                aspectRatio: 1,
                child: HLSPlayer(video: 'https://yakynyol.com.tm/${media.hls}'),
              )
            else if ((media.image ?? '').isNotEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: AppImage(media.image!),
              ),
            if ((media.title ?? '').isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: Text(media.title!, style: AppTextStyle.black20),
              ),
            ],
            if ((media.description ?? '').isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  media.description!,
                  style: AppTextStyle.dark16,
                ),
              ),
            ],
            const SizedBox(height: 16),
            const AppBannerB(),
            if (media.products.isNotEmpty) ...[
              const SizedBox(height: 20),
              TagWidget(
                Tag(id: 0, title: '', products: media.products),
              ),
            ],
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
