// ignore_for_file: unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class AlphabetAudioWidget extends StatefulWidget {
  const AlphabetAudioWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<AlphabetAudioWidget> createState() => _AlphabetAudioWidgetState();
}

class _AlphabetAudioWidgetState extends State<AlphabetAudioWidget> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void _play(String audioPath) {
    if (player != null) {
      player.setAsset(audioPath);
      player.setSpeed(1.0);
      player.setVolume(5.0);
      player.play();
    } else {
      debugPrint(globals.audioPlayerError);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _play(globals.wordAudioList[widget.index]);
      },
      icon: globals.audioPlayPauseIcon,
    );
  }
}
