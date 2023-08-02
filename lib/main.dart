
import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/bingo_splash.dart';
import 'package:games_experience/bingo_app/controller/ball_machine_controller.dart';
import 'package:games_experience/bingo_app/controller/bingo_card_controller.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => BallMachineController()),
              ChangeNotifierProvider(create: (_) => BingoCardController())
            ],
    child: const MaterialApp(
      home: BingoSplashScreen(),),
      // home: StartMenu(),),
  )
  );
}

