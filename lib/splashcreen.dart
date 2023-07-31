import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'debut.dart';
class Splashcreen extends StatefulWidget {
  const Splashcreen({Key? key}) : super(key: key);
  @override
  State<Splashcreen> createState() => _SplashcreenState();

}
class _SplashcreenState extends State<Splashcreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const Debut()));//permet de rediriger vers une autre page sans retour
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,//permet de prendre tous l'espace utiliser
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff008E8E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,//espacer les elements
          children: [
            Image.asset('images/Logo2.png'),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  CircularProgressIndicator(color:  Colors.white),//permet de faire le chargement
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Veuillez Patienter\n un instant",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat
                      (color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
