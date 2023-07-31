import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

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
                        "NOUS CONTACTER",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              "N'hésitez pas à nous contacter !",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nom',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            EasyElevatedButton(
                label: 'Envoyer',
                labelStyle: TextStyle(fontSize: 20,color: Colors.white),
                width: 50,
                height: 50,
                color: Color(0xff008E8E),isTrailingIcon: true,
                isRounded: true,
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) =>Acceuil()));
                },
              ),
          ],
        ),
      ),
    );
  }
}
