import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier{
  double _value = 0;
  double get valu => _value;

  void setValue(val){
    _value = val;
    notifyListeners();
  }

}