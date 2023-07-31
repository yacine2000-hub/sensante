
import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensant/rendezvous.dart';

import 'drawer.dart';
class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);
  @override
  State<Acceuil> createState() => _AcceuilState();
}
class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: GestureDetector(
          child: drawer(context)
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          child: ClipPath(
            clipper:OvalBottomBorderClipper() ,
            child: Container(
              //height: 100.h,
              color: Color(0xff008E8E),
              child: AppBar(
                leading: Container(),
                title: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "SENSANTE",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                backgroundColor:Color(0xff008E8E),
                elevation: 0,
              ),
            ),
          ),

        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/doctor.jpeg'),
            fit: BoxFit.cover, // Pour adapter l'image à la taille de l'écran
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 270.h),
            width: 300.w,
            height: 120.h,
            color: Colors.white, // Couleur de fond du container
            child: Column(
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'DALAL JAMM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.black,
                            fontSize: 26.sp
                          )
                        ),
                        TextSpan(text: '\n Bienvenue dans votre plateforme hospitaliére.',
                        style: TextStyle(color: Colors.black)
                        ),TextSpan(text: '\n Vous pouvez prendre un rendez-vous dés le moment\nsouhaité!!!',
                      style: TextStyle(color: Colors.black))
                      ]
                    ),
                  )
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  child: EasyElevatedButton(
                    label: 'Prendre Rendez-vous',
                    labelStyle: TextStyle(fontSize: 15.sp,color: Colors.white),
                    width: 180.w,
                    height: 30.h,
                    color: Color(0xff008E8E),isTrailingIcon: true,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Rendezvous()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
