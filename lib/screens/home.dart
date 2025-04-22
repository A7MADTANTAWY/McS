import 'package:chillex/screens/widgets/song_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // قائمة الأغاني
  final List<Map<String, String>> songs = const [
    {
      'title': 'أغنية 1',
      'artist': 'فنان 1',
      'asset': 'audio/note1.wav',
    },
    {
      'title': 'أغنية 2',
      'artist': 'فنان 2',
      'asset': 'audio/note2.wav',
    },
    {
      'title': 'أغنية 3',
      'artist': 'فنان 3',
      'asset': 'audio/note3.wav',
    },
    {
      'title': 'أغنية 4',
      'artist': 'فنان 4',
      'asset': 'audio/note4.wav',
    },
    {
      'title': 'أغنية 5',
      'artist': 'فنان 5',
      'asset': 'audio/note5.wav',
    },
    {
      'title': 'أغنية 6',
      'artist': 'فنان 6',
      'asset': 'audio/note6.wav',
    },
    // أضف المزيد من الأغاني حسب الحاجة
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chillex Home'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return SongWidget(
            title: song['title']!,
            artist: song['artist']!,
            assetPath: song['asset']!,
          );
        },
      ),
    );
  }
}
