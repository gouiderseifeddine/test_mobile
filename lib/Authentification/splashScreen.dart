import 'package:flutter/material.dart';
import 'package:test_flutter/Authentification/loginScreen.dart';

import '../constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: Color(0xFF0d0f1e),
            child: Image.asset(
              'assets/images/background.jpg',
              height: height,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                    stops: [0.2,1],
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.1),
                    ]
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Drilllight révolutionne le football',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Notre objectif : Mettre à disposition nos innovations et les technologies des plus grands au service de tous les clubs. Notre suite de solutions assiste les clubs de football et les joueurs dans leur progression et leurs performances",
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          primary: Colors.white,
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.425, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => LoginScreen()));
                      },
                      child: RichText(
                        text: TextSpan(
                            text: "Get started",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700,color: Color(0xFF0d0f1e))),
                      )),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
