import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartMenu extends StatelessWidget {
  const StartMenu({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              padding: const EdgeInsets.all(10),
              width: size.width * .9,
              decoration: BoxDecoration(
                color: Colors.amberAccent[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.amber, width:10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2,2),
                    blurRadius: 10
                  )
                ]
              ),

              child:  Column(
                children: [

                  Text("Bingo",
                    style: GoogleFonts.acme(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[700]
                    ),
                  ),


                  const SizedBox(height: 20,),


                  Text("Sua partida irá começar, você terá 40 bolas para ganhar a partida, se sua cartela não for preenchida em 40 rodadas, você poderá solicitar bolas extras para continuar jogando.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.actor(
                      color: Colors.brown[700],
                      fontSize: 20,
                    ),
                  ),


                  const SizedBox(height: 30,),

                  SizedBox(
                    width: size.width,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink
                        ),
                        onPressed: (){},
                        child: Text("Iniciar",
                          style: GoogleFonts.acme(
                            fontSize: 30
                          ),
                        )
                    ),
                  )

                ],
              ),
            )


          ],
        ),

      ),
    );
  }
}
