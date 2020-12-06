import 'package:flutter/material.dart';

class Marksheet extends StatefulWidget {
  @override
  _MarksheetState createState() => _MarksheetState();
}

class _MarksheetState extends State<Marksheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          child: Image.asset(
            "asset/images/10th Marksheet.jpg",
            fit: BoxFit.fill,
          ),
          color: Colors.pink,
        ),
        Container(
          child: Image.asset(
            "asset/images/12th Marksheet.png",
            fit: BoxFit.fill,
          ),
          color: Colors.cyan,
        ),
        Container(
          child: Image.asset(
            "asset/images/MBAMarksheet.jpg",
            fit: BoxFit.fill,
          ),
          color: Colors.deepPurple,
        ),
      ],
    ));
  }
}
