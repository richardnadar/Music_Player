import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoAsset extends StatefulWidget {
  @override
  _VideoAssetState createState() => _VideoAssetState();
}

class _VideoAssetState extends State<VideoAsset> {
  VideoPlayerController _videoPlayerController = VideoPlayerController.asset('assets/buttvid.mp4');

  @override
  void initState() {
    super.initState();
    _videoPlayerController
      ..initialize().then((_) {
        _videoPlayerController.setLooping(true);
        setState(() {});
      });
    _videoPlayerController..addListener(() {
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    _videoPlayerController.removeListener(() {});
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text(
      "VIDEO PLAYER VIA LOCAL",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.orange.shade300,
    
  ),
      body: Center(
        child: Column(
          children: <Widget>[
            _videoPlayerController.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController),
                  )
                : Container(),
            Center(
              child: IconButton(
                icon: Icon(
                  _videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                onPressed: () {
                   _videoPlayerController.value.isPlaying ? _videoPlayerController.pause() : _videoPlayerController.play();
                   setState(() {
                     
                   });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

  
   