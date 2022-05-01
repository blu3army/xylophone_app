import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              PlayButton(
                songNum: 1,
                color: Colors.indigo,
              ),
              PlayButton(
                songNum: 2,
                color: Colors.red,
              ),
              PlayButton(
                songNum: 3,
                color: Colors.blue,
              ),
              PlayButton(
                songNum: 4,
                color: Colors.green,
              ),
              PlayButton(
                songNum: 5,
                color: Colors.cyan,
              ),
              PlayButton(
                songNum: 6,
                color: Colors.yellow,
              ),
              PlayButton(
                songNum: 7,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key, required this.songNum, required this.color})
      : super(key: key);

  final int songNum;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          final audio = AudioCache();
          audio.play('note$songNum.wav');
        },
        child: Text(
          'Song $songNum',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
