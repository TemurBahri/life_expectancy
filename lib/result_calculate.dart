import 'package:life_expectancy/user_data.dart';

class Calculate {
  UserData _userData;
  Calculate(this._userData);

  double calculate() {
    double result;

    result = 90 + _userData.daySport - _userData.smokingCigarette;
    result = result + (_userData.size / _userData.kilo);
    if (_userData.gender == 'KADIN') {
      return result + 3;
    } else {
      return result;
    }
  }
}
