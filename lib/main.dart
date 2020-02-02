import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
void sound (int soundnumber) {
  final player = AudioCache();
  player.play('note$soundnumber.wav');
}

Expanded buildkey ({Color color, int soundnumber}) {
  return
    Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          sound(soundnumber );
        },

      ),
    );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone', style: TextStyle(
              color: Colors.teal.shade100,
            fontSize: 15.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundnumber:1),
              buildkey(color: Colors.yellow, soundnumber:2),
              buildkey(color: Colors.green, soundnumber:3),
              buildkey(color: Colors.cyan[300], soundnumber:4),
              buildkey(color: Colors.pink, soundnumber:5),
              buildkey(color: Colors.purple[400], soundnumber:6),
              buildkey(color: Colors.lightBlue[600], soundnumber:7),

            ],
          ),
        ),
      ),
    );
  }
}
