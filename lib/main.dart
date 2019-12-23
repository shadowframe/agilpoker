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
      // questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = ['0', '0,5', '1', '2', '3', '5', '8', '13', '20'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agil Poker'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: ListView(
          children: <Widget>[
            Text(questions[questionIndex]),
            Image.asset('assets/' + questions[questionIndex] + '.png'),
            // RaisedButton(child: Text('Antwort1'), onPressed: answerQuestion),
            // RaisedButton(
            //   child: Text('Antwort2'),
            //   onPressed: () => print('Antwort 2'),
            // ),

            // Template für den Button, zieht Bezeichnung aus der Liste
            // setzt den Index auf festen Wert

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              RaisedButton(
                child: Text(questions[0]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 0;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[1]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 1;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[2]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 2;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
            ]),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              RaisedButton(
                child: Text(questions[3]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 3;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[4]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 4;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[5]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 5;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
            ]),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              RaisedButton(
                child: Text(questions[6]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 6;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[7]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 7;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[8]),
                onPressed: () {
                  // bischen Code
                  questionIndex = 8;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
