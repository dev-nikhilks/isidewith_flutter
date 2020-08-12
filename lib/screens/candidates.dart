import 'package:flutter/material.dart';
import 'package:isidewith/constants.dart';
import 'package:isidewith/widgets/candidate_widget.dart';

class CandidatesScreen extends StatelessWidget {
  final _crossAxisSpacing = 8.0;
  final _crossAxisCount = 2;
  final cellHeight = 300;

  @override
  Widget build(BuildContext context) {
    var _width = (MediaQuery
        .of(context)
        .size
        .width -
        ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var _aspectRatio = _width / cellHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text('Top rated candidates'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: _aspectRatio,
        children: getCandidatesWidget()
      ),
    );
  }

  getCandidatesWidget() {
    List<Widget> widgets = [];
    Data.candidatesList.forEach((element) {
      widgets.add(CandidateWidget(name: element["name"],
          profile: element["profile"],
          quality: element["quality"],
          rating: element["rating"],
          votes: element["votes"]));
    });
    return widgets;
  }
}
