// import 'package:coverall/dashboards/third.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/DashBoard/frist.dart';
import 'package:ownertesting/DashBoard/third.dart';
// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: First_dash(),
//   ));
// }
class Second_dash extends StatefulWidget {
  @override
  _Second_dashState createState() => _Second_dashState();
}

class _Second_dashState extends State<Second_dash> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: new Container(
          child: new Column(
            children: <Widget>[
              SafeArea(
                  child: Image.asset("assets/bgP2.png",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                  )
              ),
              Center(
                child: Column(
                  children:[
                    Text("Fast Replies Are  ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
                    Text(" Attractive ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  IconButton(
                    icon: const Icon(Icons.arrow_back,),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return First_dash();
                      }),);
                    },
                  ),

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
                              return Third();
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

            ],




          ),

        )
    );
  }
}




