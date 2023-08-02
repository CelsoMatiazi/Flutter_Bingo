import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/controller/bingo_card_controller.dart';
import 'package:provider/provider.dart';

import 'ball_widget.dart';
class NumberBox extends StatelessWidget {
  const NumberBox({
    super.key,
    required this.number,
    this.isMark = false,
    this.showCenterImg = false
  });

  final int number;
  final bool isMark;
  final bool showCenterImg;



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var controller = Provider.of<BingoCardController>(context);
    return GestureDetector(
      onTap: (){

      },

      child: Container(
        margin: const EdgeInsets.all(5),
        alignment: Alignment.center,
        width: size.width / 7,
        height: size.width / 7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white70, width: 3)
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [

            //show ball
            if(!showCenterImg)
              BallWidget(ball: number),

            //show img center of card
            if(showCenterImg)
              const Icon(Icons.sports_volleyball),

            //mark number
            if(isMark && !showCenterImg)
              const Opacity(
                opacity: .6,
                child: Text("X",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    )),
              )

          ],
        ),

      ),
    );
  }
}
