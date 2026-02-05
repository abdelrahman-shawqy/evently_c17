import 'package:flutter/material.dart';

class AddEventProvider extends ChangeNotifier{
  int addEventIndix=0;
  int addEventIndexChips=0;
  changeAddEventIndix(int index){
    addEventIndix=index;
    notifyListeners();
  }
  chchangeAddEventIndixChips(int index){
    addEventIndexChips=index;
    notifyListeners();
  }

}