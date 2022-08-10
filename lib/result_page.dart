import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:life_expectancy/constants.dart';
import 'package:life_expectancy/result_calculate.dart';
import 'package:life_expectancy/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sonuç Sayfası',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                Calculate(_userData).calculate().round().toString(),
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Geri Dön..',
                style: kTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
