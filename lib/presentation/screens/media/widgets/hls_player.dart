import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

import '../../../../data/network/response_models/media.dart';
import '../../../widgets/app_loader.dart';

class HLSPlayer extends StatefulWidget {
  const HLSPlayer({
    required this.video,
    super.key,
  });
  final String video;

  @override
  State<HLSPlayer> createState() => _HLSPlayerState();
}

class _HLSPlayerState extends State<HLSPlayer> {
  late BetterPlayerController _betterPlayerController;
  late Media media;

  @override
  void initState() {
    print(widget.video);
    // media = widget.media;

    const controlsConfiguration = BetterPlayerControlsConfiguration(
      controlBarColor: Colors.transparent,
      iconsColor: Colors.white,
      playIcon: Icons.play_arrow_rounded,
      progressBarPlayedColor: Colors.blueAccent,
      progressBarHandleColor: Colors.blueAccent,
      loadingColor: Colors.blueAccent,
      enableSkips: false,
      enableFullscreen: false,
      enablePip: false,
      enableMute: false,
      enableAudioTracks: false,
      enableProgressText: false,
      enableSubtitles: false,
      showControlsOnInitialize: true,
      enableOverflowMenu: false,
      enablePlaybackSpeed: true,
      controlBarHeight: 70,
      overflowModalColor: Colors.black54,
      overflowModalTextColor: Colors.white,
      overflowMenuIconsColor: Colors.white,
      backgroundColor: Color(0xFFeeeeee),
      loadingWidget: AppLoader(),
    );

    const betterPlayerConfiguration = BetterPlayerConfiguration(
      controlsConfiguration: controlsConfiguration,
      aspectRatio: 1,
      fit: BoxFit.cover,
      allowedScreenSleep: false,
      autoDispose: true,
      autoPlay: true,
      expandToFill: true,
      looping: true,
    );

    final dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.video,
      useAsmsSubtitles: true,
      videoExtension: 'm3u8',
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration)
      ..setControlsAlwaysVisible(true);
    _betterPlayerController.setupDataSource(dataSource);
    super.initState();
  }

  @override
  void dispose() {
    _betterPlayerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: BetterPlayer(
            controller: _betterPlayerController,
          ),
        ),
        Positioned.fill(
          bottom: 200,
          top: 200,
          child: GestureDetector(
            onTap: () {
              if (_betterPlayerController.isPlaying() == true) {
                _betterPlayerController.pause();
              } else {
                _betterPlayerController.play();
              }
            },
            child: const ColoredBox(
              color: Colors.transparent,
              child: SizedBox(),
            ),
          ),
        ),
      ],
    );
  }
}
