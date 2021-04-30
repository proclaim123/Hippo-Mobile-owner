
import 'package:flutter/material.dart';
import 'package:ownertesting/DashBoard/frist.dart';
import 'dart:ui';

import 'DashBoard/onboard.dart';




void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return OnboardingScreen();
              }),
              );
            },
            child: Image.asset("assets/Assests_Positive Logo Horizontal.png",
              height: MediaQuery.of(context).size.height*.6,
              width: MediaQuery.of(context).size.width*.6,
            ),

          ),

        ),
      ),




    );
  }
}
