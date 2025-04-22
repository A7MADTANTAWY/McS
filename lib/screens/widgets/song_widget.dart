import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SongWidget extends StatelessWidget {
  final String title;
  final String artist;
  final String assetPath;

  const SongWidget({
    super.key,
    required this.title,
    required this.artist,
    required this.assetPath,
  });

  void _playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(assetPath));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.music_note, color: Color(0xFFa300ff)),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(artist),
      trailing: IconButton(
        icon: const Icon(Icons.play_arrow),
        onPressed: _playSound,
      ),
    );
  }
}
