import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    super.key,
    required this.letter,
  });

  final String letter;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      width: size.width / 7,

      child: Text(letter,
        style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w900,
            fontSize: 35
        ),),

    );
  }
}