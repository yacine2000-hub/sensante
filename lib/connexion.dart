
import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Acceuil.dart';
import 'debut.dart';
class ConnexionAdmin extends StatefulWidget {
  const ConnexionAdmin( {Key? key}) : super(key: key);
  @override
  State<ConnexionAdmin> createState() => _ConnexionAdmin();
}
class _ConnexionAdmin extends State<ConnexionAdmin> {
  TextEditingController loginController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  late bool notVisible = false;
  @override
  initState()  {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;//pour recuperer la taille normlale
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color:Color(0xff008E8E),
            onPressed: () {
              setState(() {
                SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Debut()));
            },
          ),
         // leading: Icon(Icons.arrow_back_rounded,color: Color(0xff008E8E))//permet de faire la fleche de retour
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  Expanded(
                    child: Card(//c'est pour faire la partie verte de la page de connexion
                      color: Color(0xff008E8E),
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0),bottomRight: Radius.circular(40.0))
                      ),
                      elevation: 10,
                    ),
                  ),
                  SizedBox(//diviser l'hauteur du contenue en trois
                    height: size.height/3,
                  ),
                ],
              ),
            ),
            SafeArea(
              child: ListView(
                children: [
                  const SizedBox(height: 50.0),
                  Image.asset('images/Logo2.png',height: 150),

                  const SizedBox(height: 30.0),
                  Card(
                      color: Colors.white,
                    margin: const EdgeInsets.all(30.0),
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
                        const SizedBox(height: 30.0),
                        Text(
                            "Sen Santé",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Color(0xff008E8E),
                                fontFamily: 'bold',
                                fontSize: 30
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          obscureText: false,
                          controller: loginController,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined,),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff008E8E),)),
                              hintText:  'Login',
                              labelStyle: TextStyle(color: Colors.grey, fontSize: 14)
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          controller: passwordController,
                          obscureText: notVisible,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password_outlined,),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscureText: false;
                                  });
                                }, icon:Icon(Icons.visibility),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff008E8E))),
                              hintText:  'Password',
                              labelStyle: TextStyle(color: Colors.grey, fontSize: 14)
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: EasyElevatedButton(
                            label: 'Se connecter',
                            labelStyle: TextStyle(fontSize: 20,color: Colors.white),
                            width: 50,
                            height: 50,
                            color: Color(0xff008E8E),isTrailingIcon: true,
                            icon: Icon(Icons.arrow_forward,color: Colors.white),
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
              )
            ],
          ),
        );
    }

  }
