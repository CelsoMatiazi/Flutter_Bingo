import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/controller/ball_machine_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class BottomWidgets extends StatelessWidget {
  const BottomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width,
      child: Consumer<BallMachineController>(
        builder: (context, controller, _) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                padding: const EdgeInsets.all(10),
                height: 95,
                width: size.width / 4,
                decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(5,5),
                        blurRadius: 5,
                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rodada",
                      style: GoogleFonts.actor(
                          fontSize: 20,
                          color: Colors.white70
                      ),
                    ),

                    Text("${controller.listOfRandomNumbers.length}",
                      style: GoogleFonts.actor(
                          fontSize: 35,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),


              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: size.width / 3.5,
                  decoration: BoxDecoration(
                      color: Colors.green[900],
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 7),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(5,5),
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child: Text("Bingo",
                    style: GoogleFonts.actor(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  )
              )

            ],
          );
        }
      ),
    );
  }
}
