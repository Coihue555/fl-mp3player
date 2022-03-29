import 'package:flutter/material.dart';
import 'package:mp3_player/src/models/audioplayer_model.dart';
import 'package:mp3_player/src/pages/music_player_page.dart';
import 'package:mp3_player/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> new AudioPlayerModel())
      ],
     child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: miTema,
      home: MusicPlayerScreen()
    ));
  }
}