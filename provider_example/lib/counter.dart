import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int counterValue=0;
  addCount(){
    counterValue +=2;
    print(counterValue);
    notifyListeners();
  }
}