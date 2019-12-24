import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  var copyright =
      'Photos by İrfan Simsar, Camila Quintero Franco, davisco, Jon Tyson, Elena Koycheva, Clem Onojeghuo, Ryan Johns, 🇨🇭 Claudio Schwarz, Waldemar Brandt, Kristian Strand on Unsplash';

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
        body: ListView(
          children: <Widget>[
            // Text(questions[questionIndex]),
            Image.asset('assets/' + questions[questionIndex] + '.png'),
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: ExactAssetImage('assets/start.png'),
                      fit: BoxFit.cover,
                    )),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/0.png'),
                ),
                title: Text(questions[0]),
                onTap: () {
                  questionIndex = 0;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/0,5.png'),
                ),
                title: Text(questions[1]),
                onTap: () {
                  questionIndex = 1;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/1.png'),
                ),
                title: Text(questions[2]),
                onTap: () {
                  questionIndex = 2;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/2.png'),
                ),
                title: Text(questions[3]),
                onTap: () {
                  questionIndex = 3;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/3.png'),
                ),
                title: Text(questions[4]),
                onTap: () {
                  questionIndex = 4;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/5.png'),
                ),
                title: Text(questions[5]),
                onTap: () {
                  questionIndex = 5;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/8.png'),
                ),
                title: Text(questions[6]),
                onTap: () {
                  questionIndex = 6;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/13.png'),
                ),
                title: Text(questions[7]),
                onTap: () {
                  questionIndex = 7;
                  answerQuestion();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/20.png'),
                ),
                title: Text(questions[8]),
                onTap: () {
                  questionIndex = 8;
                  answerQuestion();
                },
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.copyright),
                      subtitle: Text(copyright),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('THE CODE IS AVAILABLE ON GITHUB'),
                          onPressed: () async {
                            if (await canLaunch("http://google.de")) {
                              await launch("http://google.de");
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
