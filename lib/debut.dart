import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:easy_actions/easy_actions.dart';

import 'connexion.dart';
import 'inscription.dart';


class Debut extends StatefulWidget {
  const Debut({Key? key}) : super(key: key);

  @override
  State<Debut> createState() => _DebutState();
}

class _DebutState extends State<Debut> {
  @override
  void initState() {
    super.initState();
    // _getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff008E8E),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(50),
              child: Image.asset('images/image-chercheur.png'),
            ),
            Container(
              child: Text(
                'Votre sante est prioritaire',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Prendre rendez-vous devient plus facile!!!',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.montserrat(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: EasyElevatedButton(
                    label: 'Se connecter',
                    labelStyle:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color(0xff008E8E)
                        ),
                     width: 200,
                    height: 50,
                    color: Colors.white,
                    isTrailingIcon: true,
                   // icon: Icon(Icons.arrow_forward, color: Color(0xff008E8E)),
                    isRounded: true,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConnexionAdmin()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: EasyElevatedButton(
                    label: "S'inscrire",
                    labelStyle:
                    TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xff008E8E)
                    ),
                    width: 200,
                    height: 50,
                    color: Colors.white,
                    isTrailingIcon: true,
                   // icon: Icon(Icons.arrow_forward, color: Color(0xff008E8E)),
                    isRounded: true,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Inscription()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
