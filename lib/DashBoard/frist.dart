// import 'package:coverall/FillingInfo/lets_Start.dart';
// import 'package:coverall/dashboards/Fourth.dart';
// import 'package:coverall/dashboards/second.dart';
// import 'package:coverall/dashboards/third.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/DashBoard/second.dart';
// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: First_dash(),
//   ));
// }
class First_dash extends StatefulWidget {
  @override
  _First_dashState createState() => _First_dashState();
}

class _First_dashState extends State<First_dash> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: new Container(
          child: new Column(
            children: <Widget>[
              SafeArea(
                  child: Image.asset("assets/bgP1.png",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.6,
                  )
              ),
              Center(
                child: Column(
                  children:[
                    Text("Easy to Magnage  ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
                    Text(" Reservation ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
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
              SizedBox(height: 105.0,),
              SizedBox(
                height: 35.0,

                child: ButtonTheme(
                  buttonColor: Colors.deepPurple[400],
                  height: 180.0,
                  minWidth: 45.0,
                  //minWidth: double.infinity,
                  child:Center(
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Second_dash();
                        }),);
                      },


                      color: Colors.deepPurple[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),

                      child: Icon(Icons.arrow_forward,color: Colors.white,),

                    ),
                  ),
                ),
              ),

            ],




          ),

        )
    );
  }
}


