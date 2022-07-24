import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/constants.dart';

import 'genders.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String choose;
  double smokingCigarette = 0.0;
  double daySport = 0;
  int size = 0;
  int kilo = 0;

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
                  child: MyContainer(
                    child: buildRowOutlineButton('SIZE'),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlineButton('KG'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Haftada kaç gün spor yapıyorsunuz?', style: kTextStyle),
                  Text(
                    daySport.round().toString(),
                    style: kNumberStyle,
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
                    style: kTextStyle,
                  ),
                  Text(smokingCigarette.round().toString(),
                      style: kNumberStyle),
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

  Row buildRowOutlineButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: kTextStyle,
          ),
        ),
        SizedBox(width: 5),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label == 'SIZE' ? size.toString() : kilo.toString(),
            style: kNumberStyle,
          ),
        ),
        SizedBox(width: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 36,
              child: OutlineButton(
                  borderSide: BorderSide(color: Colors.green),
                  child: Icon(
                    FontAwesomeIcons.plus,
                    size: 10,
                  ),
                  onPressed: () {
                    setState(() {
                      label == 'SIZE' ? size++ : kilo++;
                    });
                  }),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlineButton(
                  borderSide: BorderSide(color: Colors.green),
                  child: Icon(
                    FontAwesomeIcons.minus,
                    size: 10,
                  ),
                  onPressed: () {
                    setState(() {
                      label == 'SIZE' ? size-- : kilo--;
                    });
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
