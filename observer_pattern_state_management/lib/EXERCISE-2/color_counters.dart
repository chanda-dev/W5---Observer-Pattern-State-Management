import 'package:flutter/material.dart';

class ColorCounters extends ChangeNotifier {
  int redTapCount = 0;
  int blueTapCount = 0;

  void incrementRedTapCount() {
    redTapCount++;
    notifyListeners();
  }

  void incrementBlueTapCount() {
    blueTapCount++;
    notifyListeners();
  }
}


// for my analysic when I print in console to see what it build I saw that 
//     if we use provider the app will rebuild only the widget that is get change or wrap in consumer
// but if we use set state it will rebuild all the widget again that related to that action
