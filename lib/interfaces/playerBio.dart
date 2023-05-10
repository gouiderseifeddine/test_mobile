import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_flutter/Authentification/loginScreen.dart';
import 'package:test_flutter/constants.dart';
import 'package:test_flutter/interfaces/performanceScreen.dart';
import 'package:test_flutter/interfaces/profilScreen.dart';

import 'missionScreen.dart';

class PlayerBioPage extends StatefulWidget {
  const PlayerBioPage({Key? key}) : super(key: key);

  @override
  _PlayerBioPageState createState() => _PlayerBioPageState();
}

class _PlayerBioPageState extends State<PlayerBioPage> {

  int indexBottomNav = 1;

  static const screens = [
    ProfilScreen(),
    PerformanceScreen(),
    MissionScreen()
  ];

  dynamic items = <Widget>[
    Icon(
      Icons.person,
      size: 26,
      color: Colors.white,
    ),
    Icon(
      Icons.handyman,
      size: 26,
      color: Colors.white,
    ),
    Icon(
      FontAwesomeIcons.trophy,
      size: 26,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,color: Colors.black87,
          ),
          onPressed: (){

          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.exit_to_app,color: Colors.black87,
            ),
            onPressed: (){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false,
              );

            },
          ),
        ],
        title:indexBottomNav==0? Text("Profil",style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          color: Colors.black
        ),):indexBottomNav ==2 ?Text("Missions",style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),):Text(""),
        centerTitle: true,
      ),
      body: screens[indexBottomNav],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 700),
        color: Color(0xFF0d0f1e),
        items: items,
        height: 60,
        index: indexBottomNav,
        onTap: (index) {
          setState(() {
            indexBottomNav = index;
          });
        },
      ),
    );
  }
}

