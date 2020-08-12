import 'dart:math';

import 'package:flutter/material.dart';
import 'package:isidewith/constants.dart';
import 'package:isidewith/widgets/candidate_widget.dart';
import 'package:isidewith/widgets/quiz_widget.dart';

class QuizScreen extends StatelessWidget {
  final List answers = [0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2020 Political Quiz'),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 66),
            child: ListView.builder(
              itemBuilder: getQuestions,
              itemCount: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text(
                  'SUBMIT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  onClickItem(value, position) {
    answers[position] = value;
  }

  Widget getQuestions(context, index) {
    return QuizWidget(Data.quizQuestions[index], onClickItem);
  }

  showAlert(context) {
    int randNumber = Random().nextInt(5);
    print("Random $randNumber");
    dynamic candidate = Data.candidatesList[randNumber];
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
//            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 350,
              width: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Your Candidate is',style: TextStyle(fontSize: 25,color: Colors.black87) ),
                    CandidateWidget(
                        name: candidate["name"],
                        profile: candidate["profile"],
                        quality: candidate["quality"],
                        rating: candidate["rating"],
                        votes: candidate["votes"]),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
