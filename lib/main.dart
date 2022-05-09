import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () {
             
              final player = AudioPlayer();
              player.play('assets/note2.wav');
            },
            child: const Text("Click here"),
          ),
        ),
      ),
    ),
  ));
}
