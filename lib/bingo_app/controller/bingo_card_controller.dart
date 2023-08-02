
import 'dart:math';

import 'package:flutter/cupertino.dart';

class BingoCardController extends ChangeNotifier {


  BingoCardController(){
    createNewBingoCard();
  }

  List<List<int>> bingoCard = [];
  final _random = Random();


  List<int> _addColumnNumbers(List range){
    Set<int> columnNumbers = {};
    int number = 0;
    while(columnNumbers.length < 5){
      number = range[0] + _random.nextInt(range[1] - range[0]); //random with range [0]min, [1]max
      columnNumbers.add(number);
    }
    return columnNumbers.toList();
  }


  void createNewBingoCard(){
    bingoCard = [];
    for(int i = 0; i < 5; i++){
      if(i == 0) bingoCard.add(_addColumnNumbers([0,15]));
      if(i == 1) bingoCard.add(_addColumnNumbers([16,30]));
      if(i == 2) bingoCard.add(_addColumnNumbers([31,45]));
      if(i == 3) bingoCard.add(_addColumnNumbers([46,60]));
      if(i == 4) bingoCard.add(_addColumnNumbers([61,75]));
    }
    notifyListeners();
  }



}