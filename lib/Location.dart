// ignore_for_file: unnecessary_new, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'CropRecommend.dart';

// ignore: use_key_in_widget_constructors
class MainLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Location();
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
        child: Text(
          "SELECT YOUR PROVINCE",
          style: TextStyle(
              fontSize: 15,
              letterSpacing: 3,
              color: Color.fromARGB(255, 29, 26, 26),
              fontWeight: FontWeight.bold),
        ),
        value: "None"),
    DropdownMenuItem(child: Text("Province 1"), value: "Province 1"),
    DropdownMenuItem(child: Text("Province 2"), value: "Province 2"),
    DropdownMenuItem(child: Text("Province 3"), value: "Province 3"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItems1 {
  List<DropdownMenuItem<String>> menuItems1 = [
    DropdownMenuItem(
        child: Text(
          "SELECT YOUR DISTRICT",
          style: TextStyle(
              fontSize: 16,
              letterSpacing: 3,
              color: Color.fromARGB(255, 29, 26, 26),
              fontWeight: FontWeight.bold),
        ),
        value: "None"),
    DropdownMenuItem(child: Text("District 1"), value: "District 1"),
    DropdownMenuItem(child: Text("District 2"), value: "District 2"),
    DropdownMenuItem(child: Text("District 3"), value: "District 3"),
  ];
  return menuItems1;
}

List<DropdownMenuItem<String>> get dropdownItems2 {
  List<DropdownMenuItem<String>> menuItems2 = [
    DropdownMenuItem(
        child: Text(
          "SELECT YOUR CITY",
          style: TextStyle(
              fontSize: 16,
              letterSpacing: 3,
              color: Color.fromARGB(255, 29, 26, 26),
              fontWeight: FontWeight.bold),
        ),
        value: "None"),
    DropdownMenuItem(child: Text("City 1"), value: "City 1"),
    DropdownMenuItem(child: Text("City 2"), value: "City 2"),
    DropdownMenuItem(child: Text("City 3"), value: "City 3"),
  ];
  return menuItems2;
}

class Location extends State<MainLocation> {
  String selectedValue = "None";
  String selectedValue1 = "None";
  String selectedValue2 = "None";

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
              "Select Location",
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 3,
                  fontFamily: 'Raleway',
                  color: Color.fromARGB(255, 29, 26, 26),
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    child: DropdownButton(
                        hint: Text("Select Province"),
                        iconEnabledColor: Colors.yellow,
                        focusColor: Colors.green,
                        dropdownColor: Colors.green,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                            if (selectedValue == "None") {
                              print("please selece a Province");
                            }
                          });
                        },
                        items: dropdownItems),
                  )),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    child: DropdownButton(
                        hint: Text("Select District"),
                        iconEnabledColor: Colors.yellow,
                        focusColor: Colors.green,
                        dropdownColor: Colors.green,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        isExpanded: true,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        value: selectedValue1,
                        onChanged: (String? newValue1) {
                          setState(() {
                            selectedValue1 = newValue1!;
                            if (selectedValue1 == "None") {
                              print("please selece a District");
                            }
                          });
                        },
                        items: dropdownItems1),
                  )),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: DropdownButton(
                        hint: Text("Select City"),
                        iconEnabledColor: Colors.yellow,
                        focusColor: Colors.green,
                        dropdownColor: Colors.green,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        isExpanded: true,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        value: selectedValue2,
                        onChanged: (String? newValue2) {
                          setState(() {
                            selectedValue2 = newValue2!;
                            if (selectedValue2 == "None") {
                              AlertDialog(
                                title: Text("My title"),
                                content: Text("This is my message."),
                              );
                            }
                          });
                        },
                        items: dropdownItems2),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 30, 20),
              width: 200,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  if (selectedValue == "None") {
                    confirm(context);
                  } else if (selectedValue1 == "None") {
                    confirm(context);
                  } else if (selectedValue2 == "None") {
                    confirm(context);
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (CropRecommend())));
                  }
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => (CropRecommend())));
                },
                color: Color.fromARGB(255, 18, 19, 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Submit",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void confirm(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Location is Not Selected   !!!!!"),
      content: Text(" please select the locations"),
      // ignore: prefer_const_literals_to_create_immutables
      actions: <Widget>[
        FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              "Ok",
            ))
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
