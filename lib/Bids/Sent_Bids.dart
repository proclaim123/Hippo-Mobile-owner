import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:ffi';
//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:hippo_ownerversion2/reservation2.dart';
// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Request_bids(),
//   ));
// }

class Sent_bids extends StatefulWidget {
  @override
  _Sent_bidsState createState() => _Sent_bidsState();
}

class _Sent_bidsState extends State<Sent_bids> {
  bool _switchValue = true;
  int counter =0;
  String dropdownstr="Info";
  int _selectedpage =4;
  final _pageOptions =[
    Text('Items 1',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 2',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 3',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 4',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 5',style: TextStyle(fontSize: 26.0 ),),


  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Text("Thu Aug 14",style: TextStyle(color: Colors.black,fontSize: 13,),),
                      Text("Kalinga Jayakodi",style: TextStyle(color: Colors.black,fontSize: 17,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("1 nights - 2 guests -1 room",style: TextStyle(color: Colors.black,fontSize: 13,),),

                        ],
                      ),
                    ],
                  ),

                  Row(

                    children: [
                      ButtonTheme(
                        buttonColor: Colors.green,
                        height: 50.0,
                        minWidth: 100.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              //return send_bids();
                            }
                            ),
                            );
                          },
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("SEND A BID",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      IconButton(
                          icon:Icon(
                            Icons.arrow_drop_down,
                            size: 40.0,

                          )
                      ),
                    ],
                  ),


                  //Text("1 nights -2 gust - 1 room",style: TextStyle(color: Colors.black),),

                ],
              ),


            ),
            Divider(color:Colors.black,),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Thu Aug 30",style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.normal),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Andrew Simons",style: TextStyle(color: Colors.black,fontSize: 17,),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonTheme(
                            buttonColor: Colors.green,
                            height: 50.0,
                            minWidth: 100.0,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return ;
                                }
                                ),
                                );
                              },
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [

                                  Text("SEND A BID",style: TextStyle(color: Colors.white),)

                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.keyboard_arrow_down,),
                            onPressed: () {
                              setState(() {

                              });
                            },
                          ),
                        ],
                      ),


                      // IconButton(
                      //   icon: Icon(
                      //   Icons.arrow_drop_down,),
                      //   //color: Colors.black,
                      //     onPressed: () {
                      //       setState(() {
                      //
                      //       });
                      //     },
                      // ),
                      //DropdownButton<String>(
                      //value: dropdownstr,
                      //onChanged: (String newvalue) {

                      //},
                      //),


                      //Text("1 nights -2 gust - 1 room",style: TextStyle(color: Colors.black),),


                    ],
                  ),

                  Text("1 nights -2 gust -1 room",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                  SizedBox(height: 10.0,),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Check in:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                      Text("Check out:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sept 21, 2019",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                      Text("Sept 22, 2019",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Booking reference",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                      Text("Preferred language:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3821155854",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                      Text("English (us):",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Basis",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                      Text("Number of sent bids",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Full Board",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                      Text("5",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Special notes:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                      Text("Room with a better sea view",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 13.0),),
                    ],
                  )
                ],
              ),
            ),



          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: _selectedpage,
          onTap: (int index) {
            setState(() {
              _selectedpage =index;
              print(index);

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.blueAccent,),
                title: Text ('home',style: TextStyle(color: Colors.black),)


            ), BottomNavigationBarItem(
              icon: Icon(Icons.work_outlined,color: Colors.blueAccent,),
              title: Text ('Reservation',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_sharp,color: Colors.blueAccent,),
              title: Text ('Availability',style: TextStyle(color: Colors.black),),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email,color: Colors.blueAccent,),
              title: Text ('Messages',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Colors.blueAccent,),
              title: Text ('Menu',style: TextStyle(color: Colors.black),),
            ),
          ],

        ),
      ),
    );
  }
}