// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class CropRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 500,
              height: 180,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/images/image1.jpg"),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 15, 13, 13),
                border: Border(
                  left: BorderSide(
                    color: Colors.green,
                    width: 30,
                  ),
                ),
              ),
            ),
            Text(
              "Suitable Crops",
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 3,
                  fontFamily: 'Raleway',
                  color: Color.fromARGB(255, 29, 26, 26),
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              width: 190,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 211, 194, 194),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text(
                    "Most Suitable crop",
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 3,
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 29, 26, 26),
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 340,
                    height: 90,
                    child: Image(
                      image: new AssetImage("assets/images/image2.jpg"),
                    ),
                  ),
                  Text(
                    "SOIL TYPE",
                    style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 3,
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 29, 26, 26),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: 190,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 211, 194, 194),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text(
                    "Compost",
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 3,
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 29, 26, 26),
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 340,
                    height: 90,
                    child: Image(
                      image: new AssetImage("assets/images/image2.jpg"),
                    ),
                  ),
                  Text(
                    "SOIL TYPE",
                    style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 3,
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 29, 26, 26),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
