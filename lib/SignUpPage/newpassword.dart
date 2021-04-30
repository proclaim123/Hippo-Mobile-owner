// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ownertesting/SignUpPage/Letsget_started.dart';
//
// import 'Verify_urnum2.dart';
//
//
//
// class New_pass extends StatefulWidget {
//   @override
//   _New_PassState createState() => _New_PassState();
// }
//
// class _New_PassState extends State<New_pass> {
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
//                  Navigator.push(context, MaterialPageRoute(builder:(context){
//                return Verify_num2();
//               }
//               ),
//               );
//               },
//           ),
//         ),
//
//
//       ),
//       body: new Container(
//         child: Center(
//           child: new Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(
//                 height:40.0,
//               ),
//               Text(
//                 "Enter Your New Password",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 25.0,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 1.0,
//               ),
//               Text(
//                 "Entre Your Name here",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 17.0,
//                     fontWeight: FontWeight.normal
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "password",
//                   hintStyle: TextStyle(color: Colors.grey),),
//               ),
//               SizedBox(
//
//                 height: 20.0,
//               )  ,
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Confirmation Password",
//                   hintStyle: TextStyle(color: Colors.grey),),
//               ),
//
//
//               SizedBox(
//                 height: 40.0,
//               ),
//               SizedBox(
//                 height: 50.0,
//                 child: ButtonTheme(
//                   buttonColor: Colors.purple,
//                   height: 180.0,
//                   minWidth: 300.0,
//                   //minWidth: double.infinity,
//                   child: Center(
//                     child: RaisedButton(
//                       onPressed: () {
//                         Navigator.push(context,MaterialPageRoute(builder: (context) {
//                           return Lets_Start();
//                         }),);
//                       },
//                       color: Colors.deepPurple[400],
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Text(
//                         "Next",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//
//             ],
//
//           ),
//         ),
//       ),
//
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'Letsget_started.dart';


class New_pass extends StatefulWidget {
  @override
  _New_passState createState() => _New_passState();
}

class _New_passState extends State<New_pass> {
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
                            "Enter your new password",
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
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Enter your name and  here',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration:
                          InputDecoration(labelText: 'Confirm Password'),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.only(bottom: 20.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/btnBack.png'),
                                fit: BoxFit.fill),
                            // borderRadius: BorderRadius.all(r),
                          ),
                          child: RaisedButton(
                              color: Color(0xFF61498C),
                              onPressed: () {
                                print("Next");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Lets_Start()),
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
                        ),
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
