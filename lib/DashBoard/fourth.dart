// import 'package:coverall/FillingInfo/lets_Start.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/Down/down.dart';
import 'package:ownertesting/SignUpPage/signup.dart';
import 'package:ownertesting/SignUpPage/testPage.dart';
import 'package:ownertesting/DashBoard/third.dart';
class Fourth extends StatefulWidget {
  @override
  _FourthState createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[

                Image.asset("assets/bgP4.png",
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                ),

                Center(
                  child: Column(
                    children:[
                      Text(" Let's Manage Your  ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
                      Text(" Property ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
                    ] ,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text("Lorem ipsum dolor sit amet, ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 15.0,fontWeight: FontWeight.normal,color: Colors.grey),),
                      Text(" consectetur adipis ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 15.0,fontWeight: FontWeight.normal,color: Colors.grey),),
                    ],
                  ),
                ),
                SizedBox(height: 25.0,),
                SizedBox(
                  height: 35.0,

                  child: ButtonTheme(
                    buttonColor: Colors.deepPurple[400],
                    height: 180.0,
                    minWidth: 250.0,
                    //minWidth: double.infinity,
                    child:Center(
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Signup();
                          }),);
                        },


                        color: Colors.deepPurple[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),

                        child: Text("GET START",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),

                      ),
                    ),
                  ),
                ),

              ],




            ),
          ),
        ),


      ),
    );
  }
}
