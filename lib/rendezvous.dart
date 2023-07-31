import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensant/historiquerv.dart';

import 'drawer.dart';

class Rendezvous extends StatefulWidget {
  const Rendezvous({Key? key}) : super(key: key);

  @override
  State<Rendezvous> createState() => _RendezvousState();
}

class _RendezvousState extends State<Rendezvous> {
  TextEditingController _dateController = TextEditingController();
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
                        "RENDEZ-VOUS",
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
      body: Container(
        margin: EdgeInsets.only(top: 40.h),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              widgetTexField(
                context,
                "Prénom",
                Icons.person_outline,
              ),
              const SizedBox(
                height: 20,
              ),
              widgetTexField(
                context,
                "Nom",
                Icons.person_outline,
              ),
              const SizedBox(
                height: 20,
              ),
              widgetTexField(
                context,
                "221",
                Icons.phone,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _dateController,
                cursorColor: Color(0xff008E8E),
                style: TextStyle(color:Color(0xff008E8E)),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null && pickedDate != DateTime.now()) {
                    setState(() {
                      _dateController.text =
                      '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
                    });
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.date_range,
                    color: Color(0xff008E8E),
                  ),
                  labelText: "jj/mm/aaaa",
                  labelStyle:
                      TextStyle(color: Color(0xff008E8E).withOpacity(0.9)),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: Color(0xff008E8E).withOpacity(0.3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none)
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              widgetTexField(
                context,
                "Veuiller Choisir un service",
                Icons.person_outline,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: EasyElevatedButton(
                  label: 'Valider',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.white),
                  width: 150,
                  height: 50,
                  color: Color(0xff008E8E),isTrailingIcon: true,
                  isRounded: true,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Historiquerv()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget widgetTexField(
    BuildContext context,
    String text,
    IconData icon,
  ) {
    return TextField(
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Color(0xff008E8E),
        ),
        labelText: text,
        labelStyle: TextStyle(color: Color(0xff008E8E).withOpacity(0.9)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Color(0xff008E8E).withOpacity(0.3),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
    );
  }
}
