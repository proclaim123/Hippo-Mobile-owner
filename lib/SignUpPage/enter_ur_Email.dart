import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class New_pass2 extends StatefulWidget {
  @override
  _New_Pass2State createState() => _New_Pass2State();
}

class _New_Pass2State extends State<New_pass2> {

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
                "Enter Your Email",
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
                "Entre Your mobile number to get reset \npin",
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
                  hintText: "name@example.com",
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
                  minWidth: 250.0,
                  //minWidth: double.infinity,
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return ;
                        }),);
                      },
                      color: Colors.purple,
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
              SizedBox(
                height: 30.0,

              ),
              Center(child: Text("Send an sms",style: TextStyle(color: Colors.deepPurpleAccent[300],fontSize: 20.0),),)

            ],

          ),
        ),
      ),

    );
  }
}
