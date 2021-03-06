import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

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
        Text(gender, style: kTextStyle),
      ],
    );
  }
}
