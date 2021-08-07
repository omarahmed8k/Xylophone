import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: XylophoneView(),
        ),
      ),
    );
  }
}

class XylophoneView extends StatefulWidget {
  @override
  _XylophoneViewState createState() => _XylophoneViewState();
}

class _XylophoneViewState extends State<XylophoneView> {
  void SoundPlayer(String wav) {
    setState(() {
      final player = AudioCache();
      player.play(wav);
    });
  }

  Expanded Tones(String Wav, Color ToneColor) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          SoundPlayer(Wav);
        },
        child: Container(
          color: ToneColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Tones('note1.wav', Colors.red),
        Tones('note2.wav', Colors.blue),
        Tones('note3.wav', Colors.green),
        Tones('note4.wav', Colors.yellow),
        Tones('note5.wav', Colors.purple),
        Tones('note6.wav', Colors.orange),
        Tones('note7.wav', Colors.brown),
      ],
    );
  }
}
