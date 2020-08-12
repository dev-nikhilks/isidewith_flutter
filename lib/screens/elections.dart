import 'package:flutter/material.dart';
import 'package:isidewith/widgets/year_widget.dart';

class ElectionScreen extends StatelessWidget {
  final _crossAxisSpacing = 8.0;
  final _crossAxisCount = 2;
  final cellHeight = 75;

  @override
  Widget build(BuildContext context) {
    var _width = (MediaQuery.of(context).size.width -
            ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var _aspectRatio = _width / cellHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text('Years'),
      ),
      body: GridView.count(
        crossAxisCount: _crossAxisCount,
        childAspectRatio: _aspectRatio,
        children: [
          YearWidget(year: '2020'),
          YearWidget(year: '2019'),
          YearWidget(year: '2018'),
          YearWidget(year: '2017'),
          YearWidget(year: '2016'),
          YearWidget(year: '2014'),
          YearWidget(year: '2012'),
          YearWidget(year: '2008'),
          YearWidget(year: '2004'),
        ],
      ),
    );
  }
}
