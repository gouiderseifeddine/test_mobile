import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {

  late double scoreValue;

  @override
  void initState() {
    // TODO: implement initState
    scoreValue = 60;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              children: [
                ClipPath(
                  clipper: CustomShape(),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 200),
                            image: DecorationImage(
                                image: AssetImage("assets/images/pdp.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        "Gouider Seif",
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                      SizedBox(height: 22),
                      const Text(
                        "Age : 25",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8492A2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF0d0f1e)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, stops: [
                    0.1,
                    0.9
                  ], colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1),
                  ])),
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 8),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Score",
                            style: TextStyle(
                                color: Color(0xFFb1dce3),
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            scoreValue.toInt().toString(),
                            style: TextStyle(
                                color: Color(0xFFb1dce3),
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Color(0xFFf3b2ca),
                          size: 20,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                          setState(() {
                            scoreValue = rating.toInt() * 20;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Your Gallery",
            style: TextStyle(color: Colors.black, fontSize: 34),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  imageGallery("assets/images/d1.jpg"),
                  SizedBox(
                    width: 16,
                  ),
                  imageGallery("assets/images/d2.jpg"),
                  SizedBox(
                    width: 16,
                  ),
                  imageGallery("assets/images/d3.jpg"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget imageGallery(image) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ])),
        ),
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
