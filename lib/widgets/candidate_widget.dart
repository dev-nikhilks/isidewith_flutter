import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CandidateWidget extends StatelessWidget {
  final String name;
  final String profile;
  final String quality;
  final String rating;
  final String votes;

  const CandidateWidget({
    Key key,
    @required this.name,
    @required this.profile,
    @required this.quality,
    @required this.rating,
    @required this.votes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profile),
                radius: 75.0,
                backgroundColor: Colors.brown.shade800,
              ),
              Text(
                "★★★★★",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                ),
              ),
              Text(
                quality,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text(
                  '$name is rated $rating\nfrom $votes voters',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
