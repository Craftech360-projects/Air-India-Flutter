import 'dart:io' show Platform;

import 'package:air_india/core/assets/app_images.dart';
import 'package:air_india/core/themes/app_colors.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoPath;
  final String title;

  const VideoPlayerScreen({
    super.key,
    required this.videoPath,
    required this.title,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  String _normalizeVideoPath(String path) {
    // Normalize path separators based on platform
    if (Platform.isWindows) {
      return path.replaceAll('/', '\\');
    }
    return path;
  }

  Future<void> _initializePlayer() async {
    final normalizedPath = _normalizeVideoPath(widget.videoPath);
    _videoPlayerController = VideoPlayerController.asset(normalizedPath);

    try {
      await _videoPlayerController.initialize();

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        looping: false,
        aspectRatio: _videoPlayerController.value.aspectRatio,
        allowFullScreen: true,
        allowMuting: true,
        placeholder: const Center(
          child: CircularProgressIndicator(
            color: AppColors.yellow,
          ),
        ),
        materialProgressColors: ChewieProgressColors(
          playedColor: AppColors.yellow,
          handleColor: AppColors.yellow,
          backgroundColor: Colors.grey.shade800,
          bufferedColor: Colors.grey.shade500,
        ),
      );

      setState(() {
        _isLoading = false;
        _errorMessage = null;
      });
    } catch (e) {
      debugPrint('Error initializing video player: $e');
      setState(() {
        _isLoading = false;
        _errorMessage = e.toString();
      });
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          Container(
            color: Colors.black,
          ),

          // Video Player
          _isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.yellow,
                  ),
                )
              : Center(
                  child: _chewieController != null
                      ? Chewie(controller: _chewieController!)
                      : Text(
                          'Error loading video:\n${_errorMessage ?? "Unknown error"}',
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                ),

          // Title
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: "AirIndia",
              ),
            ),
          ),

          // Back Button
          Positioned(
            bottom: 80,
            right: 20,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                AppImages.backBtn,
                width: 240,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
