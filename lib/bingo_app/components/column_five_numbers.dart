import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/controller/bingo_card_controller.dart';
import 'package:provider/provider.dart';

import 'number_box.dart';

class ColumnFiveNumbers extends StatelessWidget {
  const ColumnFiveNumbers({
    super.key,
    required this.numbers,
    this.isThirdColumn = false,
  });

  final List<int> numbers;
  final bool isThirdColumn;

  @override
  Widget build(BuildContext context) {



    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        NumberBox(number: numbers[0]),
        NumberBox(number: numbers[1]),
        NumberBox(number: numbers[2], showCenterImg: isThirdColumn,),
        NumberBox(number: numbers[3]),
        NumberBox(number: numbers[4]),
      ],
    );
  }
}