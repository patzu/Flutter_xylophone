import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNumber = 1;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          buildKeys(
            color: Colors.red,
            noteNumber: 1,
          ),
          buildKeysWithText(
            color: Colors.orange,
            noteNumber: 2,
            faCaption: '.',
            enCaption: '.',
          ),
          buildKeysWithText(
            color: Colors.yellow,
            noteNumber: 3,
            faCaption: '.',
            enCaption: '.',
          ),
          buildKeys(
            color: Colors.green,
            noteNumber: 4,
          ),
          buildKeysWithText(
            color: Colors.blue,
            noteNumber: 5,
            faCaption: '.',
            enCaption: '.',
          ),
          buildKeysWithText(
            color: Colors.teal,
            noteNumber: 6,
            faCaption: '.',
            enCaption: '.',
          ),
          buildKeys(
            color: Colors.purple,
            noteNumber: 7,
          ),
        ],
      ),
    );
  }

  Expanded buildKeysWithText(
      {Color color, int noteNumber, String faCaption, String enCaption}) {
    return Expanded(
      child: Container(
        color: color,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            player.play('note$noteNumber.wav');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                enCaption,
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              Text(
                faCaption,
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'IranSans',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKeys({Color color, int noteNumber}) {
    return Expanded(
      child: TextButton(
        child: Container(
          width: double.infinity,
          color: color,
        ),
        onPressed: () {
          player.play('note$noteNumber.wav');
        },
        style:
            ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(0))),
      ),
    );
  }
}
