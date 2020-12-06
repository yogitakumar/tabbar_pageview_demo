import 'package:flutter/material.dart';

class Achivement extends StatefulWidget {
  @override
  _AchivementState createState() => _AchivementState();
}

class _AchivementState extends State<Achivement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:PageView(
          children: <Widget>[
            Container(
              child: Image.asset("asset/images/studentofyear.jpg",fit: BoxFit.contain,),

            ),
            Container(
              child: Image.asset("asset/images/university.jpg",fit: BoxFit.contain,),

            ),
            Container(
              child: Image.asset("asset/images/best empolyee.jpg",fit: BoxFit.contain,),
          
            ),
          ],
        )
    );
  }
}
