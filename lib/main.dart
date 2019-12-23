import 'package:flutter/material.dart';
import 'package:fab_menu/fab_menu.dart';

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
  List<MenuData> menuDataList;

  @override
  void initState() {
    super.initState();
    menuDataList = [
     
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 0;
        print(questionIndex);
        answerQuestion();
      }, labelText: '0'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 1;
        print(questionIndex);
        answerQuestion();
      }, labelText: '0,5'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 2;
        print(questionIndex);
        answerQuestion();
      }, labelText: '1'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 3;
        print(questionIndex);
        answerQuestion();
      }, labelText: '2'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 4;
        print(questionIndex);
        answerQuestion();
      }, labelText: '3'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 5;
        print(questionIndex);
        answerQuestion();
      }, labelText: '5'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 6;
        print(questionIndex);
        answerQuestion();
      }, labelText: '8'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 7;
        print(questionIndex);
        answerQuestion();
      }, labelText: '13'),
      new MenuData(Icons.arrow_left, (context, menuData) {
        questionIndex = 8;
        print(questionIndex);
        answerQuestion();
      }, labelText: '20')
    ];
  }

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
        floatingActionButton: new FabMenu(
          menus: menuDataList,
          maskColor: Colors.black,
        ),
        floatingActionButtonLocation: fabMenuLocation,
        body: ListView(
          children: <Widget>[
           // Text(questions[questionIndex]),
            Image.asset('assets/' + questions[questionIndex] + '.png'),
            
          ],
        ),
      ),
    );
  }
}
