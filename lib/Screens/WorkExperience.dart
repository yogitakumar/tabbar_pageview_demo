import 'package:flutter/material.dart';

class WorkExperince extends StatefulWidget {
  @override
  _WorkExperinceState createState() => _WorkExperinceState();
}

class _WorkExperinceState extends State<WorkExperince> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.orange,
          ),
        ),
        Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.yellowAccent,
          ),
        ),
        Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.green,
          ),
        )
      ],
    );
  }
}
