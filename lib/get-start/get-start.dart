import 'package:flutter/material.dart';
import 'package:untitled17/color%20-config/config.dart';

import '../Rejester/sigin/Sigin-Rejester.dart';

class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(
          child: Column(
        children: <Widget>[
          new Container(
            height: myheight * 2,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/restruntapp-849ba.appspot.com/o/Burger-Transparent-Images.png?alt=media&token=391a993d-a1e9-4492-b337-f14bdb6f02cc"),
                    fit: BoxFit.contain)),
          ),
          new Container(
            height: myheight,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: black,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: ListView(
              children: <Widget>[
                Column(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "WELCOME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Your favourite food delivered Fast at you door",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 16.0,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegistrationScreen();
                          }));
                        },
                        child: Container(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "Get Started",
                              style: TextStyle(fontSize: 60.0),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
