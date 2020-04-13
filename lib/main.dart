import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Animal Sound',
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playSound(String animalName) {
    final player = AudioCache();
    player.play('$animalName.wav');
  }

  Container _buildWidget(String animalName) {
    return Container(
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            playSound(animalName);
          },
          child: Card(
            elevation: 4,
            child: Image.asset('img/$animalName.png'),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(25),
              child: Text(
                "Animal Sound",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              )),
          Expanded(
            child: GridView.count(crossAxisCount: 2, children: [
              _buildWidget("cow"),
              _buildWidget("cat"),
              _buildWidget("chicken"),
              _buildWidget("sheep"),
            ]),
          ),
          Container(
            height: 100,
            child: Text(
              "Tap animal icon to listen",
              style: TextStyle(color: Colors.teal[100], fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
