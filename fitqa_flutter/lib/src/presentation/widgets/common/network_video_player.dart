import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class NetworkVideoPlayer extends StatefulWidget {
  NetworkVideoPlayer({Key? key, required this.url}) : super(key: key);

  String url;

  @override
  State<NetworkVideoPlayer> createState() => _NetworkVideoPlayerState();
}

class _NetworkVideoPlayerState extends State<NetworkVideoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVidePlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(widget.url);

    _initializeVidePlayerFuture = _controller.initialize();

    // 비디오 반복재생
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVidePlayerFuture,
        builder: (context, snapshot) {
          // 만약 controller 초기화가 끝나면, 제공된 데이터를 사용하여 videoPlayer 의 종횡비를 제한함.
          if (snapshot.connectionState == ConnectionState.done) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                });
              },
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  VideoPlayer(_controller),
                  // AspectRatio(
                  //   aspectRatio: _controller.value.aspectRatio,
                  //   child: VideoPlayer(_controller),
                  // ),
                  Visibility(
                    visible: !_controller.value.isPlaying,
                    child: SvgPicture.asset(
                      "images/video_play.svg",
                      width: 102,
                      height: 102,
                    ),
                  ),
                ],
              ),
            );
          } else {
            // controller 가 초기화중이라면 로딩 스피너 보여주기
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
