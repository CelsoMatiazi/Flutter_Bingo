
import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/components/title_box.dart';
import 'package:games_experience/bingo_app/controller/bingo_card_controller.dart';
import 'package:provider/provider.dart';
import 'column_five_numbers.dart';

class BingoCard extends StatelessWidget {
  const BingoCard({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        padding: const EdgeInsets.all(10),
        width: size.width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70, width: 3),
          borderRadius: BorderRadius.circular(14)
      ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleBox(letter: "B"),
                TitleBox(letter: "I"),
                TitleBox(letter: "N"),
                TitleBox(letter: "G"),
                TitleBox(letter: "0"),
              ],
            ),


            Consumer<BingoCardController>(
              builder: (context, controller, _) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColumnFiveNumbers(numbers: controller.bingoCard[0],),
                    ColumnFiveNumbers(numbers: controller.bingoCard[1],),
                    ColumnFiveNumbers(numbers: controller.bingoCard[2], isThirdColumn: true,), //shows an image in the center of the card
                    ColumnFiveNumbers(numbers: controller.bingoCard[3],),
                    ColumnFiveNumbers(numbers: controller.bingoCard[4],),
                  ],
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}





