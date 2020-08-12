import 'package:flutter/material.dart';

class PollsWidget extends StatelessWidget {

  final String type;
  final String question;
  final String image;

  const PollsWidget(
      {Key key,
        @required this.type,
        @required this.question,
        @required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ))),
            Padding(
              padding: const EdgeInsets.only(left:8.0,top: 8.0),
              child: Text(type,style: TextStyle(fontSize: 20.0),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(question,style: TextStyle(fontSize: 15.0),),
            )
          ],
        ),
      ),
    );
  }
}
