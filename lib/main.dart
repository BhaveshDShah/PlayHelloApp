import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void player(var playerSound) {
    final player = AudioCache();
    player.play('$playerSound');
  }

  Expanded buildExpand({Color color, var soundNumber, var text}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('$soundNumber');
        },
        child: Text('$text'),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildExpand(
                  color: Colors.blueAccent,
                  soundNumber: 'thankyou1_ru.mp3',
                  text: 'Thank u in russia'),
              buildExpand(
                  color: Colors.deepOrange,
                  soundNumber: 'iloveyou_kyrgyz.mp3',
                  text: 'Love you in kyrgyz'),
              buildExpand(
                  color: Colors.deepPurple,
                  soundNumber: 'hello_ca.mp3',
                  text: 'Hello in Ca'),
              buildExpand(
                  color: Colors.greenAccent,
                  soundNumber: 'hello2_hindi.mp3',
                  text: 'hello in Hindi'),
              buildExpand(
                  color: Colors.indigoAccent,
                  soundNumber: 'hello1_af.mp3',
                  text: 'Hello in af'),
              buildExpand(
                  color: Colors.orange,
                  soundNumber: 'birthday_kyrgyz.mp3',
                  text: 'Birthday in kyrgyz'),
            ],
          ),
        ),
      ),
    );
  }
}
