import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/SignUpPage/Letsget_started.dart';



class New_pass extends StatefulWidget {
  @override
  _New_PassState createState() => _New_PassState();
}

class _New_PassState extends State<New_pass> {

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
                "Enter Your New Password",
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
                "Entre Your Name here",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey),),
              ),
              SizedBox(

                height: 20.0,
              )  ,
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Confirmation Password",
                  hintStyle: TextStyle(color: Colors.grey),),
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
                          return Lets_Start();
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
