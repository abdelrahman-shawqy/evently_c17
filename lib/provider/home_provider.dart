import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  int selectedItem=0;

  changeSelectedItem(int index){
    selectedItem=index;
    notifyListeners();
  }
}