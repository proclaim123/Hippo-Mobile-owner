// import 'package:coverall/dashboards/Fourth.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/DashBoard/fourth.dart';
import 'package:ownertesting/DashBoard/second.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
          body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/bgP3.png",
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.5,
                        ),
                        Column(
                          children: [
                            Text("We'll Manage Your   ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
                            Text(" Social Media   ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 25.0,fontWeight: FontWeight.normal),),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Lorem ipsum dolor sit amet, ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 15.0,fontWeight: FontWeight.normal,color: Colors.grey),),
                            Text(" consectetur adipis ",style: TextStyle(fontFamily: 'SF Pro Text',fontSize: 15.0,fontWeight: FontWeight.normal,color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 105.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back,),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Second_dash();
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
                                        return Fourth();
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
                  ),
                ]
            ),
          )
      ),
    );
  }
}
