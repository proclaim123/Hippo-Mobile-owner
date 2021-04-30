// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ownertesting/Cinnamon%20Citadel/Cinomon%20Citadel.dart';
// import 'package:ownertesting/Cinnamon%20Citadel/Cinomon.dart';
// import 'package:ownertesting/SignUpPage/Forgetmypassword.dart';
// import 'package:ownertesting/SignUpPage/signup.dart';
// // import 'package:testingtwo/restFilling/Verify_ur_num.dart';
//
// // void main (){
// //   runApp(MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     home: Lets_Start(),
// //   ));
// // }
// class Lets_Start extends StatefulWidget {
//   @override
//   _Lets_StartState createState() => _Lets_StartState();
// }
//
// class _Lets_StartState extends State<Lets_Start> {
//
//   @override
//   Widget build(BuildContext context) {
//     Size size=MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         brightness: Brightness.light,
//         iconTheme: IconThemeData(color: Colors.black),
//
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//
//           child:  IconButton(
//             icon: const Icon(Icons.arrow_back,),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context){
//                 return Signup() ;
//               }),);
//             },
//           ),
//         ),
//
//
//       ),
//       body: SingleChildScrollView(
//         child: new Container(
//           child: Center(
//             child: new Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(
//                   height:30.0,
//                 ),
//                 Align(
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.92,
//                     child: AspectRatio(
//                       aspectRatio: 1 / 0.3,
//                       child: FittedBox(
//                         alignment: Alignment.centerLeft,
//                         child: Image(
//
//                           image: AssetImage('assets/Assests_Positive Logo Horizontal.png'),
//                           fit: BoxFit.fill, // use this
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height:20.0,
//                 ),
//                 Text(
//                   "    Let's Get Started",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.normal),
//                 ),
//                 SizedBox(
//                   height: 1.0,
//                 ),
//                 Text(
//                   "    Sign in to see deals up to 50% easily \n"
//                       "    your current bookings and more...",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.normal
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Email",
//                     hintStyle: TextStyle(color: Colors.grey),),
//                 ),
//                 SizedBox(
//
//                   height: 20.0,
//                 )  ,
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "password",
//                     hintStyle: TextStyle(color: Colors.grey),),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Center(
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder:(context){
//                         return Forget_paswrd();
//                       }
//                       ),
//                       );
//                     },
//                     child: new Padding(
//                       padding: new EdgeInsets.all(10.0),
//                       child: new Text(
//                         "Forget Your Password?",
//                         style: TextStyle(color: Color(0xFF61498C)),
//                       ),
//                       ),
//                     ),
//                   ),
//                 SizedBox(
//                   height: 40.0,
//                 ),
//                 SizedBox(
//                   height: 50.0,
//                   child: ButtonTheme(
//                     buttonColor: Colors.purple,
//                     height: 180.0,
//                     minWidth: 300.0,
//                     //minWidth: double.infinity,
//                     child: Center(
//                       child: RaisedButton(
//                         onPressed: () {
//                           Navigator.push(context,MaterialPageRoute(builder: (context) {
//                             return Cinomon();
//                           }),);
//                         },
//                         color: Color(0xFF61498C),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Text(
//                           "Next",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Cinomon.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';

import 'Forgetmypassword.dart';

class Lets_Start extends StatefulWidget {
  @override
  _Lets_StartState createState() => _Lets_StartState();
}

class _Lets_StartState extends State<Lets_Start> {
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    // myFocusNode.dispose();
    super.dispose();
  }

  // void _requestFocus() {
  //   setState(() {
  //     // FocusScope.of(context).requestFocus(myFocusNode);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(

        // statusBarColor is used to set Status bar color in Android devices.
          statusBarColor: Colors.white,

          // To make Status bar icons color white in Android devices.
          statusBarIconBrightness: Brightness.dark,

          // statusBarBrightness is used to set Status bar icon color in iOS.
          statusBarBrightness: Brightness.dark
        // Here light means dark color Status bar icons.

      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '',
        ),
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              //height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Center(
                  child: Container(
                    //height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.18),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Let\'s Get Started .",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Sign in to see deals up to 50%, easily your current bookings, and more...',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: "Password"),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Forget_paswrd()),
                              );
                            },
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                color: Color(0xFF61498C),
                                fontSize: 16.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: RaisedButton(
                              color: Color(0xFF61498C),
                              onPressed: () {
                                print("Next");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                );
                              },
                              child: Text(
                                'NEXT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                  new BorderRadius.circular(5.0))),
                        )
                      ],
                    ),
                  ),
                )),
            Align(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.92,
                child: AspectRatio(
                  aspectRatio: 1 / 0.3,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Image(
                      image: AssetImage('assets/Assests_Positive Logo Horizontal.png'),
                      fit: BoxFit.fill, // use this
                      //height: MediaQuery.of(context).size.height * 0.18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
