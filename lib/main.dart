import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void play(int n)
  {
    final player = AudioCache();
    player.play("note$n.wav");
  }
   Expanded buil(Color color , int n)
  {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: (){
            play(n);
          }
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buil(Colors.red,1),
              buil(Colors.orange,2),
              buil(Colors.yellow,3),
              buil(Colors.green,4),
              buil(Colors.teal,5),
              buil(Colors.blue,6),
              buil(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
