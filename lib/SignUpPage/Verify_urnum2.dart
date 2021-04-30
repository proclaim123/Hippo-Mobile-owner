// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ownertesting/SignUpPage/newpassword.dart';
// import 'package:flutter_verification_code/flutter_verification_code.dart';
//
// import 'Forgetmypassword.dart';
//
//
// // void main() {
// //   runApp(MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     home: MyApp(),
// //   )
// //   );
// // }
// class Verify_num2 extends StatefulWidget {
//   @override
//   _Verify_num2 createState() => _Verify_num2();
// }
//
// class _Verify_num2 extends State<Verify_num2> {
//   @override
//   Widget build(BuildContext context) {
//     Size size =MediaQuery.of(context).size;
//     return Scaffold(
//       body: new Container(
//         child: Center(
//           child: new Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(
//                 height: 20.0,
//               ),
//               SafeArea(
//                 child:IconButton(
//                   icon: const Icon(Icons.arrow_back,),
//                   onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder:(context){
//                   return Forget_paswrd();
//             }
//              ),
//               );
//              },
//
//                 ),
//               ),
//               SizedBox(
//                 height: 60.0,
//               ),
//               Text("Verify Your Number\n",style: TextStyle(color: Colors.black,fontSize:20.0,height: 1.0,fontWeight: FontWeight.normal),),
//               SizedBox(
//                 height: 0.0,
//               ),
//               Text("Please enter the 4-digit code sent to you at\n 070123456",style: TextStyle(color: Colors.grey,fontSize: 16.0),),
//               SizedBox(height:50.0 ),
//               // SizedBox(
//               //   height: 30.0,
//               //   child:new Row(
//               //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: <Widget>[
//               //       SizedBox(width: 20.0,),
//               //       new Flexible(
//               //         //to get multiple text field in a same line
//               //         child: new TextField(
//               //             decoration: InputDecoration(
//               //                 contentPadding: EdgeInsets.all(10)
//               //             )
//               //         ),
//               //       ),
//               //       SizedBox(width: 20.0,),
//               //       new Flexible(
//               //         child: new TextField(
//               //             decoration: InputDecoration(
//               //                 contentPadding: EdgeInsets.all(10)
//               //             )
//               //         ),
//               //       ),
//               //       SizedBox(width: 20.0,),
//               //       new Flexible(
//               //         child: new TextField(
//               //             decoration: InputDecoration(
//               //                 contentPadding: EdgeInsets.all(10)
//               //             )
//               //         ),
//               //       ),
//               //       SizedBox(width: 40.0,),
//               //       new Flexible(
//               //         child: new TextField(
//               //             decoration: InputDecoration(
//               //                 contentPadding: EdgeInsets.all(10)
//               //             )
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // ),
//               SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.015),
//               VerificationCode(
//                 keyboardType: TextInputType.number,
//                 length: 4,
//                 autofocus: true,
//                 itemSize: MediaQuery.of(context).size.width * 0.20,
//                 onCompleted: (String value) {
//                   //...
//                   print(value);
//                 },
//                 onEditing: (bool value) {},
//               ),
//               SizedBox(
//                   height:40.0 // space between the textformfield and the button
//               ),
//               SizedBox(
//                 // the button starts soon after the verify numbers
//                 height: 50.0,
//
//                 child: Center(
//                   child: ButtonTheme(
//                     buttonColor: Colors.deepPurple[300],
//                     height: 180.0,
//                     minWidth: 300.0,
//                     child: RaisedButton(
//                       onPressed: () {
//                         Navigator.push(context, MaterialPageRoute(builder:(context){
//                           return New_pass();
//                         }),);
//                       },
//
//
//
//                       color: Colors.deepPurple[300],
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 22.0),),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//
//               ),
//               Center(child: Text("Resend code ",style: TextStyle(color: Colors.deepPurpleAccent[300],fontSize: 20.0),),)
//
//             ],
//           ),
//
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';


import 'newpassword.dart';


class Verify_num2 extends StatefulWidget {
  @override
  _Verify_num2State createState() => _Verify_num2State();
}

class _Verify_num2State extends State<Verify_num2> {
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
                            "Verify your number",
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
                              'You will receive a pin number shortly',
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
                            height: MediaQuery.of(context).size.height * 0.015),
                        VerificationCode(
                          keyboardType: TextInputType.number,
                          length: 4,
                          autofocus: true,
                          itemSize: MediaQuery.of(context).size.width * 0.20,
                          onCompleted: (String value) {
                            //...
                            print(value);
                          },
                          onEditing: (bool value) {},
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
                                  CupertinoPageRoute(
                                      builder: (context) => New_pass()),
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
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Resend code",
                              style: TextStyle(
                                color: Color(0xFF61498C),
                                fontSize: 14.5,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
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

