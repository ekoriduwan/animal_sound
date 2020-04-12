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

  @override
  Widget build(BuildContext context) {
    void playSound(String animalName) {
      final player = AudioCache();
      player.play('$animalName.wav');
    }

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
              Container(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      playSound("cow");
                    },
                    child: Card(
                      elevation: 4,
                      child: Image.asset('img/cow.png'),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      playSound("cat");
                    },
                    child: Card(
                      elevation: 4,
                      child: Image.asset('img/cat.png'),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      playSound("chicken");
                    },
                    child: Card(
                      elevation: 4,
                      child: Image.asset('img/chicken.png'),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      playSound("sheep");
                    },
                    child: Card(
                      elevation: 4,
                      child: Image.asset('img/sheep.png'),
                    ),
                  )),
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
