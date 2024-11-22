import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  int _red = 0;
  int _green = 0;
  int _blue = 0;

  int get red => _red;
  int get green => _green;
  int get blue => _blue;

  Color get color => Color.fromARGB(255, _red, _green, _blue);

  void updateRed(int value) {
    _red = value;
    notifyListeners();
  }

  void updateGreen(int value) {
    _green = value;
    notifyListeners();
  }

  void updateBlue(int value) {
    _blue = value;
    notifyListeners();
  }
}
