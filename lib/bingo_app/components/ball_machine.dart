import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/ball_machine_controller.dart';
import 'ball_widget.dart';


class BallMachine extends StatelessWidget {

  const BallMachine({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);
    double animationCoverBallWidth(double width){
      var controller = context.read<BallMachineController>();
      if(controller.listOfRandomNumbers.length == 1) return width - width/1.8;
      if(controller.listOfRandomNumbers.length == 2) return width - (width/1.8 + width/4) - 2;
      if(controller.listOfRandomNumbers.length == 3) return width - (width/1.8 + width/2) - 2;
      return - width / 3.2;
    }

    return Column(
      children: [

        Container(
          width: size.width,
          height: 10,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/cano.png"),
                  fit: BoxFit.fill
              )
          ),
        ),

        Consumer<BallMachineController>(
            builder: (context, controller, _ ) {
              return Stack(
                alignment: Alignment.centerRight,
                children: [
                  SizedBox(
                      height: size.width / 4,
                      width: size.width,
                      child: ListView.builder(
                          controller: controller.animatedListController,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listOfRandomNumbers.length,
                          itemBuilder: (context, index){
                            if(controller.listOfRandomNumbers.length -1  != index){
                              return BallWidget( ball: controller.listOfRandomNumbers[index] );
                            }
                            return  SizedBox(
                              height: size.width / 4 - 3,
                              width: size.width / 4 - 3,
                            );

                          })
                  ),

                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.bounceOut,
                    right: controller.spinningStatus
                        ? animationCoverBallWidth(size.width)
                        : -size.width / 1.5,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: size.width / 4 ,
                      width: size.width / 1.8,
                      color: Colors.green,
                      child: controller.listOfRandomNumbers.isNotEmpty ?
                      AnimatedRotation(
                        duration: const Duration(seconds: 1),
                        turns: controller.spinningTurns,
                        child: BallWidget(
                          ball: controller.listOfRandomNumbers[controller.listOfRandomNumbers.length - 1],
                        ),
                      ) : null,
                    ),
                  ),


                  if(controller.overrideAnimationBall)
                    Positioned(
                      right: animationCoverBallWidth(size.width),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: size.width / 4,
                        width: size.width / 1.8,
                        color: Colors.green,
                        child: BallWidget(
                          ball: controller.listOfRandomNumbers[controller.listOfRandomNumbers.length - 1],
                        ),
                      ),
                    ),

                  if(controller.listOfRandomNumbers.length < 3 && controller.overrideAnimationBall)
                    Container(
                      width: size.width/2 - 7,
                      height: size.width / 4,
                      color: Colors.green,
                    )

                ],
              );
            }
        ),



        Container(
          width: size.width,
          height: 10,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/cano.png"),
                  fit: BoxFit.fill
              )
          ),
        ),


      ],
    );
  }
}
