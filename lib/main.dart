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

  var copyright = 'Photo by Brendan Church on Unsplash\n\n'
      'Photo by Camila Quintero Franco on Unsplash\n\n'
      'Photo by davisco on Unsplash\n\n'
      'Photo by Jon Tyson on Unsplash\n\n'
      'Photo by Elena Koycheva on Unsplash\n\n'
      'Photo by Clem Onojeghuo on Unsplash\n\n'
      'Photo by Ryan Johns on Unsplash\n\n'
      'Photo by 🇨🇭 Claudio Schwarz on Unsplash\n\n'
      'Photo by Waldemar Brandt on Unsplash\n\n'
      'Photo by Kristian Strand on Unsplash\n\n'
      "stuff for the 3rd paragraph\n\n";

  @override
  void initState() {
    super.initState();
    menuDataList = [
      new MenuData(Icons.copyright, (context, menuData) {
        Scaffold.of(context)
            .showSnackBar(new SnackBar(content: new Text(copyright)));
      }, labelText: 'Copyright'),
      new MenuData(Icons.home, (context, menuData) {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: RaisedButton(
            child: Text(questions[0]),
            onPressed: () {
              // bischen Code
              questionIndex = 0;
              print(questionIndex);
              answerQuestion();
            },
          ),
        ));
      }, labelText: 'home'),
      new MenuData(Icons.sync_disabled, (context, menuData) {
        setState(() {
          menuData.enable = !menuData.enable;
          menuData.icon = menuData.enable ? Icons.sync : Icons.sync_disabled;
        });
      }, labelText: 'enable')
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
          mainIcon: Icons.help,
          menus: menuDataList,
          maskColor: Colors.black,
        ),
        floatingActionButtonLocation: fabMenuLocation,
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
