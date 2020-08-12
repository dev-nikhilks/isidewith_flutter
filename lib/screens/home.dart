import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextStyle mainHeaderStyle =
      TextStyle(fontSize: 28, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Instructions',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          getWidget(
              'Quiz',
              'You can answer the questions to see how your political beliefs'
                  ' match your political parties and candidates.'),
          getWidget('Polls',
              'You could explore the popular political issues in our country.'),
          getWidget('Elections',
              'List of election years to learn more about your candidates and elections.'),
          getWidget('Candidates', 'Here you can find the top rated candidates.')
        ],
      ),
    );
  }

  getWidget(String heading, String body) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          heading,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          body,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ]),
    );
  }
}
