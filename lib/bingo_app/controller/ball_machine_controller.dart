

import 'dart:math';

import 'package:flutter/material.dart';

class BallMachineController extends ChangeNotifier{

  BallMachineController(){
    addNewRandomBall();
  }

  var random = Random();
  final ScrollController animatedListController = ScrollController();

  int numberOfPlay = 40;

  List<int> listOfRandomNumbers = [];
  bool spinningStatus = false;
  bool overrideAnimationBall = false;
  double spinningTurns = 0.0;
  int timeScrollBall = 3; // 3 animation steps, timeScrollBall sec each step
  bool showProgressStatus = false;


  addNewRandomBall() async {
    int value = random.nextInt(70) + 1;

    if(!listOfRandomNumbers.contains(value)){
      spinningBallEvents();
      listOfRandomNumbers.add(value);
      _scrollToEnd();
    }else if(listOfRandomNumbers.length < numberOfPlay){
      addNewRandomBall();
    }
    notifyListeners();
  }

  spinningBallEvents() async {
    //Animação da bola girando entrando na tela
    await Future.delayed(const Duration(milliseconds: 500));
    spinningStatus = true;
    spinningTurns = -1;
    showProgressStatus = true;
    notifyListeners();

    //Add nova imagem da bola para esconder a animação reversa
    await Future.delayed(Duration(seconds: timeScrollBall));
    overrideAnimationBall = true;
    notifyListeners();

    //animação de retorno da bola, escondido pela imagem sobreposta
    await Future.delayed(Duration(seconds:  timeScrollBall));
    spinningStatus = false;
    notifyListeners();

    //retira a imagem sobreposta para iniciar uma nova animação
    spinningTurns = 0.0;
    await Future.delayed(Duration(seconds:  timeScrollBall));
    overrideAnimationBall = false;
    showProgressStatus = false;
    notifyListeners();
    addNewRandomBall();
  }

  _scrollToEnd() async {
    await Future.delayed(const Duration(milliseconds: 100));
    animatedListController.animateTo(
        animatedListController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 1400),
        curve: Curves.bounceOut
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animatedListController.dispose();
  }

}