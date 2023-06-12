import 'package:flutter/cupertino.dart';

class ProviderIncrement with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
