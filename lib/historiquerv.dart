import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer.dart';
import 'models/rendezvous.dart';
class Historiquerv extends StatefulWidget {
  const Historiquerv({Key? key}) : super(key: key);

  @override
  State<Historiquerv> createState() => _HistoriquervState();
}

class _HistoriquervState extends State<Historiquerv> {
  List<Appointment> appointments = [
    Appointment(title: 'Rendez-vous 1', service:'Cardiologue' ,date: DateTime(2023, 7, 31, 10, 0)),
    Appointment(title: 'Rendez-vous 2', service:'Dentiste',date: DateTime(2023, 8, 5, 15, 30)),
    Appointment(title: 'Rendez-vous 3', service:'Pédiatre',date: DateTime(2023, 8, 10, 9, 45)),
    Appointment(title: 'Rendez-vous 4', service:'Gynécologue',date: DateTime(2023, 8, 10, 9, 45)),
    Appointment(title: 'Rendez-vous 5', service:'Maternité',date: DateTime(2023, 8, 10, 9, 45)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: GestureDetector(child: drawer(context)),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          child: ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              //height: 100.h,
              color: Color(0xff008E8E),
              child: AppBar(
                leading: Container(),
                title: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "LISTE RENDEZ-VOUS",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Color(0xff008E8E),
                elevation: 0,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: appointments.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return  Container(
            color: Color(0xff008E8E),
            margin: EdgeInsets.all(10),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Container(
                padding:  EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                height: 80.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(image: AssetImage('images/Logo2.png')),
                      margin: EdgeInsets.only(left: 5),
                    ),
                    Container(
                      margin:  EdgeInsets.only(left: 50.0),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(appointments[index].title),
                            Text(appointments[index].service),
                            Text(appointments[index].date.toString()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
