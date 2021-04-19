import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Cinomon%20Citadel.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Cinomon.dart';
import 'package:ownertesting/SignUpPage/Forgetmypassword.dart';
import 'package:ownertesting/SignUpPage/signup.dart';
// import 'package:testingtwo/restFilling/Verify_ur_num.dart';

// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Lets_Start(),
//   ));
// }
class Lets_Start extends StatefulWidget {
  @override
  _Lets_StartState createState() => _Lets_StartState();
}

class _Lets_StartState extends State<Lets_Start> {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),

        leading: Padding(
          padding: const EdgeInsets.all(8.0),

          child:  IconButton(
            icon: const Icon(Icons.arrow_back,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Signup() ;
              }),);
            },
          ),
        ),


      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height:40.0,
              ),
              Text(
                "Let's Get Started",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "Sign in to see deals up to 50% easily \n"
                    "your current bookings and more...",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey),),
              ),
              SizedBox(

                height: 20.0,
              )  ,
              TextFormField(
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey),),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Forget_paswrd();
                    }
                    ),
                    );
                  },
                  child: new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Text(
                      "Forget Your Password?",
                      style: TextStyle(color: Colors.deepPurpleAccent[300]),
                    ),
                    ),
                  ),
                ),
              SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 50.0,
                child: ButtonTheme(
                  buttonColor: Colors.purple,
                  height: 180.0,
                  minWidth: 300.0,
                  //minWidth: double.infinity,
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return Cinomon();
                        }),);
                      },
                      color: Colors.deepPurple[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),
      ),

    );
  }
}
