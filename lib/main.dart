import 'package:flutter/material.dart';
import 'package:isidewith/screens/candidates.dart';
import 'package:isidewith/screens/elections.dart';
import 'package:isidewith/screens/home.dart';
import 'package:isidewith/screens/polls.dart';
import 'package:isidewith/screens/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  static List<Widget> _widgets = <Widget>[
    HomeScreen(),
    QuizScreen(),
    PollScreen(),
    ElectionScreen(),
    CandidatesScreen()
  ];

  var _selectedTab = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Quiz'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.poll),
            title: Text('Polls'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            title: Text('Elections'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Candidates'),
          ),
        ],
        currentIndex: _selectedTab,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),


    );
  }
}

