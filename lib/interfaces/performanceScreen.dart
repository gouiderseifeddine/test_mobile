import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';


class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({Key? key}) : super(key: key);

  @override
  _PerformanceScreenState createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Votre performance",style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28
                ),),
                SizedBox(height: 3,),
                Text("DRILLIGHT",style: TextStyle(
                  color: Colors.black,
                  fontSize: 42
                ),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Column(
              children: [
                Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      performanceCard(Color(0xFF0d0f1e),"Legs","25"),
                      SizedBox(width: 20,),
                      performanceCard(Color(0xFF0d0f1e),"Knee","05")
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      performanceCard(Color(0xFF0d0f1e),"Header","10"),
                      SizedBox(width: 20,),
                      performanceCard(Color(0xFF0d0f1e),"Sprinting","3")
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

  Widget performanceCard(color,text,value){
    return AspectRatio(
      aspectRatio:4/5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color
          //insert image
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1,0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 24
                  ),
                ),
                SizedBox(height: 30,),
                Image.asset("assets/images/dd.png",scale:6,color: Color(0xFFb1dce3),),
                Spacer(),
                Text(
                  value,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),

    );
  }


}
