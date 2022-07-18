import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderFunc extends StatelessWidget {
  final String gender;
  final IconData icon;

  GenderFunc({this.gender, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(height: 12),
        Text(
          gender,
          style: TextStyle(
              color: Colors.black54,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  MyContainer({this.color = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: color),
    );
  }
}
