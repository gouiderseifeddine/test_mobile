import 'package:flutter/material.dart';

class MissionScreen extends StatefulWidget {
  const MissionScreen({Key? key}) : super(key: key);

  @override
  _MissionScreenState createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 58.0,top: 30),
              child: Text("Attacking missions",style: TextStyle(
                fontWeight:  FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF0d0f1e)
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 20,
                    child: Material(
                      child: Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.3),
                                  offset: Offset(-10, 10),
                                  blurRadius: 20,
                                  spreadRadius: 4.0)
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 35,
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/shooting.png"),
                              )),
                        ),
                      )),
                  Positioned(top: 45, left: 160, child: Container(
                    height: 150,
                    width: 180,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            "Shooting task :",style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0d0f1e)
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 37.0),
                          child: Divider(color: Colors.black,),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            "Try to strike a goal from 30m above :",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0d0f1e)
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 40.0),
                          child: Text(
                            "5 points",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade700
                          ),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 58.0,top: 30),
              child: Text("Defensing missions",style: TextStyle(
                  fontWeight:  FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF0d0f1e)
              ),),
            ),
            SizedBox(height: 30,),
            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 20,
                    child: Material(
                      child: Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.3),
                                  offset: Offset(-10, 10),
                                  blurRadius: 20,
                                  spreadRadius: 4.0)
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 35,
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/defending.jpg"),
                              )),
                        ),
                      )),
                  Positioned(top: 45, left: 160, child: Container(
                    height: 150,
                    width: 180,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            "Defending task :",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0d0f1e)
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 37.0),
                          child: Divider(color: Colors.black,),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            "Take the ball back from the attacker 10 times",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0d0f1e)
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 40.0),
                          child: Text(
                            "5 points",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade700
                          ),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
