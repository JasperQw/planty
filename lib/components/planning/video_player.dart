import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_video_view/flutter_video_view.dart';

class VideoPlayerComponent extends StatefulWidget {
  const VideoPlayerComponent({super.key});

  @override
  State<VideoPlayerComponent> createState() => _VideoPlayerComponentState();
}

class _VideoPlayerComponentState extends State<VideoPlayerComponent> {
  late VideoController controller;

  @override
  void initState() {
    controller = VideoController(
      videoPlayerController:
          VideoPlayerController.asset("assets/videos/example.mp4"),
      videoConfig: VideoConfig(
        // height: 260,
        // autoInitialize: true,
        autoPlay: false,
        controlsType: ControlsType.news,
        deviceOrientationsExitFullScreen: <DeviceOrientation>[
          DeviceOrientation.portraitUp,
        ],
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoView(controller: controller);
  }
}
