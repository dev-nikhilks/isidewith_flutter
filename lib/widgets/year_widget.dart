import 'package:flutter/material.dart';

class YearWidget extends StatelessWidget {
  final String year;

  const YearWidget({Key key, @required this.year}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.calendar_today,color: Colors.black54,),
          SizedBox(width: 5,),
          Text(year,style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
}
