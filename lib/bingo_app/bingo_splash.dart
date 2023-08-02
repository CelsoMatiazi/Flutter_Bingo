import 'package:flutter/material.dart';
import 'package:games_experience/bingo_app/bingo_home.dart';
import 'package:lottie/lottie.dart';


class BingoSplashScreen extends StatefulWidget {
  const BingoSplashScreen({super.key});

  @override
  State<BingoSplashScreen> createState() => _BingoSplashScreenState();
}

class _BingoSplashScreenState extends State<BingoSplashScreen> {


  bool _cardAnimationWidth = false;

  @override
  void initState() {
    super.initState();
    _animation();
  }

  void _animation() async {
    await Future.delayed(const Duration(seconds: 0));
    _cardAnimationWidth = true;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);

    return Scaffold(

      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.green[700],
        child:  Stack(
          alignment: Alignment.center,
          children: [

            SizedBox(
              width: size.width,
              height: size.height,
              child: Lottie.asset(
                  "assets/coins_rain2.json",
                  fit: BoxFit.cover,
              ),
            ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                AnimatedContainer(
                  width: !_cardAnimationWidth ? size.width / 6 : size.width,
                  duration: const Duration(milliseconds: 1500),
                    curve: Curves.easeInOutBack,
                    child: Center(
                      child: SizedBox(
                        width: size.width,
                          height: size.width,
                          child: Lottie.asset("assets/bingo_card.json")),
                    )
                ),

                SizedBox(
                  width: size.width * .8,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const BingoHome()
                            )
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                      ),
                      child: const Text('JOGAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900

                      ),)
                  ),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
