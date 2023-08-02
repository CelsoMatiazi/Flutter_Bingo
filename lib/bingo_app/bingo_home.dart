
import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/components/ball_machine.dart';
import 'package:games_experience/bingo_app/components/bingo_card.dart';
import 'components/bottom_widgets.dart';
import 'components/timer_indicator.dart';


class BingoHome extends StatefulWidget {
  const BingoHome({super.key});

  @override
  State<BingoHome> createState() => _BingoHomeState();
}

class _BingoHomeState extends State<BingoHome> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);

    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green[900],
      ),

      body: Container(
          height: size.height,
          width: size.width,
          color: Colors.green,
          child: const SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TimerIndicator(),
                BallMachine(),
                TimerIndicator(),

                SizedBox( height: 20 ),
                Expanded( child: BingoCard() ),

                BottomWidgets()

              ],
            ),
          )
      ),

    );
  }
}





