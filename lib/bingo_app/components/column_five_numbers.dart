import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/models/ball_model.dart';


import 'number_box.dart';

class ColumnFiveNumbers extends StatelessWidget {
  const ColumnFiveNumbers({
    super.key,
    required this.numbers,
    this.isThirdColumn = false,
  });

  final List<BallModel> numbers;
  final bool isThirdColumn;

  @override
  Widget build(BuildContext context) {



    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        NumberBox(ball: numbers[0]),
        NumberBox(ball: numbers[1]),
        NumberBox(ball: numbers[2], showCenterImg: isThirdColumn,),
        NumberBox(ball: numbers[3]),
        NumberBox(ball: numbers[4]),
      ],
    );
  }
}