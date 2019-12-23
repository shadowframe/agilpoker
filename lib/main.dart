import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = ['0?', '1?'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agil Beer Poker'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Antwort1'), onPressed: answerQuestion),
            RaisedButton(
              child: Text('Antwort2'),
              onPressed: () => print('Antwort 2'),
            ),

            // Template für den Button, zieht Bezeichnung aus der Liste
            // setzt den Index auf festen Wert
            
            RaisedButton(
              child: Text(questions[0]),
              onPressed: () {
                // bischen Code
                questionIndex = 1;
                print(questionIndex);
              },
            ),
          ],
        ),
      ),
    );
  }
}
