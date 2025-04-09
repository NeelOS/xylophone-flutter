import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playSound(int number) {
  final player = AudioCache();
  player.play('note$number.wav');
}

Expanded buildKey({Color color, int noteNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playSound(noteNumber);
      },
      color: color,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, noteNumber: 1),
              buildKey(color: Colors.orange, noteNumber: 2),
              buildKey(color: Colors.yellow, noteNumber: 3),
              buildKey(color: Colors.green, noteNumber: 4),
              buildKey(color: Colors.teal, noteNumber: 5),
              buildKey(color: Colors.blue, noteNumber: 6),
              buildKey(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
