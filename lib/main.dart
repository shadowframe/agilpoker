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
  var questionIndex = 9;

  void answerQuestion() {
    setState(() {
      // questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = ['0', '0,5', '1', '2', '3', '5', '8', '13', '20', 'start'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agil Poker'),
          backgroundColor: Colors.pinkAccent,
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => questionIndex = 4),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      
        body: ListView(
          children: <Widget>[
            Text(questions[questionIndex]),
            Image.asset('assets/' + questions[questionIndex] + '.png'),
            
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
                  questionIndex = 1;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[2]),
                onPressed: () {
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
                  questionIndex = 3;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[4]),
                onPressed: () {
                  questionIndex = 4;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[5]),
                onPressed: () {
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
                  questionIndex = 6;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[7]),
                onPressed: () {
                  questionIndex = 7;
                  print(questionIndex);
                  answerQuestion();
                },
              ),
              RaisedButton(
                child: Text(questions[8]),
                onPressed: () {
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
