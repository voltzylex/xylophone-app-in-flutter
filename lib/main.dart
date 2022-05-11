import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int i) {
    final player = AudioPlayer();
    player.play('assets/note$i.wav');
  }

  Expanded buildkey({required Color color, required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundNumber: 1), //1
              buildkey(color: Colors.orange, soundNumber: 2), //2
              buildkey(color: Colors.yellow, soundNumber: 3), //3
              buildkey(color: Colors.green, soundNumber: 4), //4
              buildkey(color: Colors.teal, soundNumber: 5), //5
              buildkey(color: Colors.blue, soundNumber: 6), //6
              buildkey(color: Colors.purple, soundNumber: 7), //7
            ],
          ),
        ),
      ),
    );
  }
}
