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
  var copyright = 'Photo by İrfan Simsar on Unsplash\n\n'
      'Photo by Camila Quintero Franco on Unsplash\n\n'
      'Photo by davisco on Unsplash\n\n'
      'Photo by Jon Tyson on Unsplash\n\n'
      'Photo by Elena Koycheva on Unsplash\n\n'
      'Photo by Clem Onojeghuo on Unsplash\n\n'
      'Photo by Ryan Johns on Unsplash\n\n'
      'Photo by 🇨🇭 Claudio Schwarz on Unsplash\n\n'
      'Photo by Waldemar Brandt on Unsplash\n\n'
      'Photo by Kristian Strand on Unsplash\n\n';

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
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('Image Copyrights'),
              ),
              Text(copyright)
            ],
          ),
        ),
      ),
    );
  }
}
