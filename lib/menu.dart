// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'Location.dart';
import 'CropRecommend.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("MENU"),
        //   centerTitle: true,
        //   backgroundColor: Colors.grey[850],
        //   elevation: 2.0,
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: 450,
              height: 270,
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
              "Menu",
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 3,
                  fontFamily: 'Raleway',
                  color: Color.fromARGB(255, 29, 26, 26),
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 30, 10),
              width: 400,
              height: 50.0,
              child: RaisedButton(
                elevation: 6.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainLocation()));
                },
                color: Color.fromARGB(255, 26, 28, 29),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Get Crop Recommendation",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 30, 10),
              width: 400,
              height: 50.0,
              child: RaisedButton(
                elevation: 6.0,
                onPressed: () {},
                color: Color.fromARGB(255, 18, 19, 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Solution for common diaeses and pests",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 30, 10),
              width: 400,
              height: 50.0,
              child: RaisedButton(
                elevation: 6.0,
                onPressed: () {},
                color: Color.fromARGB(255, 26, 27, 29),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Fertilizer Recommendation",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 30, 10),
              width: 400,
              height: 50.0,
              child: RaisedButton(
                elevation: 6.0,
                onPressed: () {},
                color: Color.fromARGB(255, 25, 27, 29),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Suitable location",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




  //  body: Column(
  //         children: [
  //           Image.asset(
  //             'assets/images/headerLogo.jpg',
  //             fit: BoxFit.contain,
  //             width: 300,
  //             height: 100,
  //           ),
  //           Text("Menu"),
  //           RaisedButton(
  //             onPressed: null,
  //             child: Text("asdasdasd"),
  //             padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
  //           ),
  //           RaisedButton(
  //             onPressed: null,
  //             child: Text("asdasdasd"),
  //           ),
  //           RaisedButton(
  //             onPressed: null,
  //             child: Text("asdasdasd"),
  //           ),
  //         ],
  //       )
