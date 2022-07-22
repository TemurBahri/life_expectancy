import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'genders.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String choose;
  double smokingCigarette = 0.0;
  double daySport = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Life Expectancy',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(),
                ),
                Expanded(
                  child: MyContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Haftada kaç gün spor yapıyorsunuz?',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    daySport.round().toString(),
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: daySport,
                    divisions: 7,
                    onChanged: (double newValue) {
                      setState(() {
                        daySport = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde kaç adet sigara içiyorsunuz?',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    smokingCigarette.round().toString(),
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: smokingCigarette,
                    onChanged: (double newValue) {
                      setState(() {
                        smokingCigarette = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        choose = 'WOMEN';
                      });
                    },
                    color: choose == 'WOMEN' ? Colors.pink[300] : Colors.white,
                    child: GenderFunc(
                      gender: 'WOMEN',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        choose = 'MEN';
                      });
                    },
                    color: choose == 'MEN' ? Colors.blue[300] : Colors.white,
                    child: GenderFunc(
                      gender: 'MEN',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
