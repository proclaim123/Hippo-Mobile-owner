import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Cinomon%20Citadel.dart';
import 'package:ownertesting/SignUpPage/Letsget_started.dart';
import 'package:ownertesting/SignUpPage/Verify_ur_num.dart';
import 'package:ownertesting/SignUpPage/Verify_urnum2.dart';
import 'package:ownertesting/SignUpPage/enter_ur_Email.dart';


// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//
//   ));
// }

class Forget_paswrd extends StatefulWidget {
  @override
  _Forget_paswrd createState() => _Forget_paswrd();
}

class _Forget_paswrd extends State<Forget_paswrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              SafeArea(
                child:IconButton(
                  icon: const Icon(Icons.arrow_back,),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Lets_Start();
                    }
                    ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
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
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("  Forget My Password",style: TextStyle(color: Colors.black,fontSize: 21.0,fontWeight: FontWeight.normal),)),

              Padding(
                 padding: const EdgeInsets.only(top: 8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("    Enter Your Mobile number",style: TextStyle(color:Colors.black ),)),
              ),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
                decoration: InputDecoration(

                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: Image.asset(
                      "assets/srilanka.png",
                      width: 30,
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                  ),
                  hintText: "+94 79 123 45 67" ,

                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),

              SizedBox(
                height: 50.0,
                child: ButtonTheme(
                  buttonColor: Colors.deepPurple[400],
                  height: 180.0,
                  minWidth: 150.0,
                  child: Center(
                    child: RaisedButton(
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return Verify_num2();
                        }),);
                      },
                        color: Color(0xFF61498C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Next",style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return New_pass2();
                      }
                      ),
                      );
                    },
                    child: new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Text("Send an Email",style: TextStyle(color: Color(0xFF61498C)),)
                    ),
                  ),),
              SizedBox(
                height:20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.black,fontSize: 14.0),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return Cinomon_Citadel();
                      }
                      ),
                      );
                    },
                    child: new Padding(
                        padding: new EdgeInsets.all(10.0),
                        child: new Text("Log In",style: TextStyle(color: Color(0xFF61498C),fontSize: 14.0),)
                    ),
                  ),
                ],
              ),

            ],
          ),


        ),
      ),
    );
  }
}


// import 'package:country_pickers/country.dart';
// import 'package:country_pickers/country_picker_dialog.dart';
// import 'package:country_pickers/utils/utils.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:ownertesting/Cinnamon%20Citadel/Cinomon%20Citadel.dart';
// import 'Verify_urnum2.dart';
// import 'enter_ur_Email.dart';
// import 'package:country_code_picker/country_code_picker.dart';
//
// class Forget_paswrd extends StatefulWidget {
//   @override
//   _Forget_paswrdState createState() => _Forget_paswrdState();
// }
//
// class _Forget_paswrdState extends State<Forget_paswrd> {
//   FocusNode myFocusNode;
//   Country _selectedDialogCountry =
//   CountryPickerUtils.getCountryByPhoneCode('94');
//   @override
//   void initState() {
//     super.initState();
//     myFocusNode = FocusNode();
//   }
//
//   @override
//   void dispose() {
//     // Clean up the focus node when the Form is disposed.
//     // myFocusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text(
//           '',
//         ),
//         brightness: Brightness.light,
//         iconTheme: IconThemeData(color: Colors.black),
//         backgroundColor: Colors.white,
//         bottomOpacity: 0.0,
//         elevation: 0.0,
//       ),
//       body: new SingleChildScrollView(
//         child: Stack(
//           children: <Widget>[
//             Container(
//               //height: MediaQuery.of(context).size.height,
//                 color: Colors.white,
//                 child: Center(
//                   child: Container(
//                     //height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.18),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             "Forgot My Password",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 28.0,
//                               fontFamily: 'SF Pro Display',
//                               fontStyle: FontStyle.normal,
//                               fontWeight: FontWeight.w400,
//                             ),
//                             textAlign: TextAlign.left,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 8.0),
//                           child: Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               'Enter your mobile number to get reset pin',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16.0,
//                                 fontFamily: 'SF Pro Display',
//                                 fontStyle: FontStyle.normal,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.05),
//                         Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               Stack(
//                                   alignment: Alignment.bottomCenter,
//                                   children: <Widget>[
//                                     Container(
//                                       //color: Colors.red,
//                                       width: MediaQuery.of(context).size.width *
//                                           0.37,
//
//                                       child: Theme(
//                                         data: Theme.of(context).copyWith(
//                                           cursorColor: Color(0xFF61498C),
//                                         ),
//                                         child: TextFormField(
//                                           enabled: true,
//                                           obscureText: false,
//                                           keyboardType: TextInputType.number,
//                                           decoration: InputDecoration(
//                                             labelText: '',
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       // color: Colors.red,
//                                       width: MediaQuery.of(context).size.width *
//                                           0.38,
//
//                                       child: Row(
//                                         children: <Widget>[
//                                           InkWell(
//                                             onTap: _openCountryPickerDialog,
//                                             splashColor: Color(0xFF61498C),
//                                             child: Container(
//                                                 height: MediaQuery.of(context)
//                                                     .size
//                                                     .height *
//                                                     0.065,
//                                                 child: _buildDialogItem(
//                                                     _selectedDialogCountry)),
//                                           ),
//                                           Icon(
//                                             Icons.arrow_drop_down,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ]),
//                               Expanded(
//                                 child: Container(
//                                   //width: MediaQuery.of(context).size.width*0.6,
//                                   child: TextFormField(
//                                     obscureText: false,
//                                     keyboardType: TextInputType.number,
//                                     decoration: InputDecoration(
//                                         labelText: 'Mobile Number'),
//                                   ),
//                                 ),
//                               ),
//                             ]),
//                         SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.03),
//                         Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: MediaQuery.of(context).size.height * 0.07,
//                           margin: EdgeInsets.only(bottom: 20.0),
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('assets/btnBack.png'),
//                                 fit: BoxFit.fill),
//                             // borderRadius: BorderRadius.all(r),
//                           ),
//                           child: RaisedButton(
//                               color: Colors.transparent,
//                               onPressed: () {
//                                 print("Next");
//                                 print("Next");
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => Verify_num2()),
//                                 );
//                               },
//                               child: Text(
//                                 'NEXT',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16.0,
//                                   fontFamily: 'SF Pro Display',
//                                   fontStyle: FontStyle.normal,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               shape: new RoundedRectangleBorder(
//                                   borderRadius:
//                                   new BorderRadius.circular(5.0))),
//                         ),
//                         FlatButton(
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           New_pass2()));
//                             },
//                             child: Text(
//                               "Send an email",
//                               style: TextStyle(
//                                 color: Color(0xFF61498C),
//                                 fontSize: 16.0,
//                                 fontFamily: 'SF Pro Display',
//                                 fontStyle: FontStyle.normal,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             )),
//                         SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.01),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Text(
//                               "Already have an account?",
//                               style: TextStyle(
//                                 // color: Color(0xFF61498C),
//                                 fontSize: 17.0,
//                                 fontFamily: 'SFCompactDisplay',
//                                 fontStyle: FontStyle.normal,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                             Container(
//                               alignment: Alignment.centerLeft,
//                               // width: 80,
//                               child: FlatButton(
//                                   onPressed: () {
//                                     Navigator.push(
//                                         context,
//                                         CupertinoPageRoute(
//                                             builder: (context) => Cinomon_Citadel()));
//                                   },
//                                   child: Text(
//                                     "Log In",
//                                     style: TextStyle(
//                                       color: Color(0xFF61498C),
//                                       fontSize: 17.0,
//                                       fontFamily: 'SFCompactText',
//                                       fontStyle: FontStyle.normal,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   )),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//             ),
//             Align(
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.92,
//                 child: AspectRatio(
//                   aspectRatio: 1 / 0.3,
//                   child: FittedBox(
//                     alignment: Alignment.centerLeft,
//                     child: Image(
//                       color: Colors.black,
//                       image: AssetImage('assets/hippoWithText.png'),
//                       fit: BoxFit.fill, // use this
//                       //height: MediaQuery.of(context).size.height * 0.18,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDialogItemList(Country country) => Row(
//     children: <Widget>[
//       CountryPickerUtils.getDefaultFlagImage(country),
//       SizedBox(width: 8.0),
//       Text("+${country.phoneCode}"),
//       SizedBox(width: 8.0),
//       Flexible(child: Text(country.name))
//     ],
//   );
//   Widget _buildDialogItem(Country country) => Row(
//     children: <Widget>[
//       CountryPickerUtils.getDefaultFlagImage(country),
//       SizedBox(width: 8.0),
//       Text("+${country.phoneCode}"),
//       SizedBox(width: 8.0),
//       // Flexible(child: Text(country.name))
//     ],
//   );
//   void _openCountryPickerDialog() => showDialog(
//     context: context,
//     builder: (context) => Theme(
//       data: Theme.of(context).copyWith(primaryColor: Colors.pink),
//       child: CountryPickerDialog(
//         titlePadding: EdgeInsets.all(8.0),
//         // searchCursorColor: Colors.pinkAccent,
//         searchInputDecoration: InputDecoration(hintText: 'Search...'),
//         isSearchable: true,
//         title: Text('Select your phone code'),
//         onValuePicked: (Country country) {
//           print(country.name);
//           setState(() => _selectedDialogCountry = country);
//         },
//         itemBuilder: _buildDialogItemList,
//         priorityList: [
//           CountryPickerUtils.getCountryByIsoCode('LK'),
//           CountryPickerUtils.getCountryByIsoCode('US'),
//         ],
//       ),
//     ),
//   );
// }
