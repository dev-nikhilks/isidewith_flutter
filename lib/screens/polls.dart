import 'package:flutter/material.dart';
import 'package:isidewith/widgets/polls_widget.dart';

class PollScreen extends StatelessWidget {
  final _crossAxisSpacing = 8.0;
  final _crossAxisCount = 2;
  final cellHeight = 220;

  @override
  Widget build(BuildContext context) {
    var _width = (MediaQuery.of(context).size.width -
            ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var _aspectRatio = _width / cellHeight;

    return Scaffold(
      appBar: AppBar(
        title: Text('Big {Political} Data'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: _aspectRatio,
        children: [
          PollsWidget(
            image: 'assets/abortion.jpg',
            type: 'Abortion',
            question: 'What is your stance on abortion?',
          ),
          PollsWidget(
            image: 'assets/equal_pay.jpg',
            type: 'Equal Pay',
            question: 'What is your stance on equal pay?',
          ),
          PollsWidget(
            image: 'assets/gun_control.jpg',
            type: 'Gun Control',
            question: 'What is your stance on gun control?',
          ),
          PollsWidget(
            image: 'assets/lgbt_flag.jpg',
            type: 'Gay Marriage',
            question: 'What is your stance on gay marriage?',
          ),
          PollsWidget(
            image: 'assets/lgbt_adoption.png',
            type: 'LGBT Adoption Rights',
            question: 'What is your stance on LGBT Adoption Rights?',
          ),
        ],
      ),
    );
  }
}
