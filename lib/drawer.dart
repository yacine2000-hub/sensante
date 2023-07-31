import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sensant/connexion.dart';
import 'package:sensant/historiquerv.dart';
import 'package:sensant/nouscontacter.dart';
Widget drawer(BuildContext context) {
  return Drawer(
    elevation: 16.0,
    width: MediaQuery.of(context).size.width / 1.5,
    child: Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 150.h,
            child: ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                height: 120.h,
                color: Color(0xff008E8E),
                child: Center(
                  child: Image.asset(
                    'images/image-chercheur.png',
                    width: 150.w,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
           /* onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrendrePhoto())),*/
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 5, top: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NOS SERVICES',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color:  Color(0xff008E8E)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff008E8E),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Color(0xff008E8E)
          ),
          InkWell(
             onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactUsPage())),
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 5, top: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NOUS-CONTACTER',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color:  Color(0xff008E8E)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff008E8E),
                  )
                ],
              ),
            ),
          ),
          Divider(
              color: Color(0xff008E8E)
          ),
          InkWell(
             onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Historiquerv())),
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 5, top: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MES INFORMATIONS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color:  Color(0xff008E8E)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff008E8E),
                  )
                ],
              ),
            ),
          ),
          Divider(
              color: Color(0xff008E8E)
          ),
          InkWell(
             onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ConnexionAdmin())),
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 5, top: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SE DÉCONNECTER',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color:  Color(0xff008E8E)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff008E8E),
                  )
                ],
              ),
            ),
          ),
          Divider(
              color: Color(0xff008E8E)
          ),
        ],
      ),
    ),
  );
}
