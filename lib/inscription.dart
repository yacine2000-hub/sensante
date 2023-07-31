import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensant/Acceuil.dart';
import 'package:sensant/debut.dart';
class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);
  @override
  State<Inscription> createState() => _InscriptionState();
}
class _InscriptionState extends State<Inscription> {
  late bool notVisible = false;
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: ClipPath(
          clipper:OvalBottomBorderClipper() ,
          child: Container(
            color: Color(0xff008E8E),
            child: AppBar(
              leading: BackButton(
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Debut()));
                },
              ),
              title: Container(
                margin: EdgeInsets.only(top: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "INSCRIPTION DU PATIENT",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 17.sp,
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
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h),
              child: SafeArea(
                child: ListView(
                  children: [
                    const SizedBox(height: 30.0),
                    Card(
                      color: Color(0xff008E8E),
                      margin: const EdgeInsets.all(20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 20,
                      child: ListView(
                        shrinkWrap: true,
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(16.0),
                        children: [
                          const SizedBox(height: 15.0),
                          TextFormField(
                            style: TextStyle(
                                color: Colors.white
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.person,color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,)
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelText: "Nom",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                )
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            style: TextStyle(
                                color: Colors.white
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.person,color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,)
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelText: "Prenom",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                )
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            keyboardType:TextInputType.emailAddress,
                            style: TextStyle(
                                color: Colors.white
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.email_outlined,color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,)
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                )
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            keyboardType:TextInputType.phone,
                            style: TextStyle(
                                color: Colors.white
                            ),
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.phone,color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,)
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                labelText: "Telephone ",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                )
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: !_showPassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Le mot de passe est obligatoire';
                              } else if (value.length < 4) {
                                return 'Le mot de passe doit contenir au moins 4 caractères';
                              }
                              // return null;
                            },
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  icon: _showPassword
                                      ? Icon(Icons.visibility,
                                      color: Colors.white)
                                      : Icon(Icons.visibility_off,color: Colors.white),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,)
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white,)),
                                labelText: 'Mot de passe',
                                labelStyle: TextStyle(
                                    color: Colors.white, fontSize: 14.sp)),
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: !_showPassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Le mot de passe est obligatoire';
                              } else if (value.length < 4) {
                                return 'Le mot de passe doit contenir au moins 4 caractères';
                              }
                              // return null;
                            },
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  icon: _showPassword
                                      ? Icon(Icons.visibility,
                                      color: Colors.white)
                                      : Icon(Icons.visibility_off,color: Colors.white),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,)
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white,)),
                                labelText: 'Confimer Mot de passe',
                                labelStyle: TextStyle(
                                    color: Colors.white, fontSize: 14.sp)),
                          ),
                          const SizedBox(
                              height: 20
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40,bottom: 30,left: 40,right: 40),
                            width: MediaQuery.of(context).size.width,
                            height: 40.h,
                            child: EasyElevatedButton(
                              label: 'VALIDER',
                              labelStyle: TextStyle(fontSize: 16.sp,color: Color(0xff008E8E),),
                              color: Colors.white,isTrailingIcon: true,
                              isRounded: true,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>Acceuil()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
