import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Expanded playSound(int noteNo, Color clr) {
    return (Expanded(
      child: TextButton(
        onPressed: () {
          final assetsAudioPlayer = AssetsAudioPlayer();
          assetsAudioPlayer.open(
            Audio("assets/note$noteNo.wav"),
          );
        },
        child: Container(
          color: clr,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              playSound(1, Colors.red),
              playSound(2, Colors.blue),
              playSound(3, Colors.black),
              playSound(4, Colors.purpleAccent),
              playSound(5, Colors.grey),
              playSound(6, Colors.green),
              playSound(7, Colors.yellowAccent),
            ],
          ),
        ),
      ),
    );
  }
}
