import 'package:flutter/material.dart';


class BallWidget extends StatelessWidget {
  const BallWidget({
    super.key,
    required this.ball,
  });

  final int ball;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.all(3),
      height: (size.width / 4) - 5,
      width: (size.width / 4)  - 5,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.white54],
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.black45,
                offset: Offset(5, 2),
                blurRadius: 5
            )
          ],
          border: Border.all(
              color: Colors.white10,
              width: 10,
          )
      ),
      child: Center(
        child: FittedBox(
          child: Text("$ball",
            style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
