import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/ball_machine_controller.dart';

class TimerIndicator extends StatelessWidget {
  const TimerIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);

    return Consumer<BallMachineController>(
        builder: (context, controller, _ ) {
          return AnimatedContainer(
            duration:  Duration(seconds: controller.showProgressStatus
                ? controller.timeScrollBall * 3 // 3 steps of animation
                : 0
            ),
            height: 10,
            width: size.width * (controller.showProgressStatus ? 1 : 0),
            color: Colors.green[700],

          );
        }
    );
  }
}