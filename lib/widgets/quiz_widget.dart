import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final dynamic question;
  final Function returnFunction;
  QuizWidget(this.question, this.returnFunction);
  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int _groupValue;

  onClickItem(item){
    setState(() {
      _groupValue = item;
    });
    widget.returnFunction(item,widget.question["question_number"]);
  }

  @override
  void initState() {
    super.initState();
    _groupValue = widget.question["answer"];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
//          Container(
//            padding: EdgeInsets.all(8),
//            child: Text(
//              widget.question["category"],
//              style: TextStyle(
//                fontSize: 30,
//                fontWeight: FontWeight.bold,
//              ),
//            ),
//          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    widget.question["question"],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio(
                      value: 0,
                      groupValue: _groupValue,
                      onChanged: onClickItem
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio(
                      value: 1,
                      groupValue: _groupValue,
                      onChanged: onClickItem
                    ),
                  ),
                  ListTile(
                    title: const Text('Not sure'),
                    leading: Radio(
                      value: 2,
                      groupValue: _groupValue,
                      onChanged: onClickItem
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
