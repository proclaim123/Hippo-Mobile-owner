import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ownertesting/Availability/Avilability.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/MessagesOrigin/dart/message.dart';
import 'package:ownertesting/Moreorigin/More.dart';
import 'package:ownertesting/reservation/reservationList.dart';


// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Meals(),
//   ));
// }




class Mealss extends StatefulWidget {
  @override
  _MealssState createState() => _MealssState();
}

class _MealssState extends State<Mealss> {

  bool _switchValue = true;
  int counter =0;
  String dropdownstr="Info";
  int _selectedpage =0;
  final _pageOptions =[
    Text('Items 1',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 2',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 3',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 4',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 5',style: TextStyle(fontSize: 26.0 ),),


  ];

  bool status = false;
  bool status1 = true;







  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "Touch ID & passcode",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back,),
                onPressed: () {
                },
              ),
            ),



            actions: <Widget>[
              FlatButton(
                textColor: Color(0xFF61498C),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        fullscreenDialog: false,
                        builder: (context) => ReservationList()),
                  );
                  print("");
                },
                child: Text(
                  "Done",
                  style: TextStyle(
                    color: Color(0xFF61498C),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Text',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
              ),
            ],
          ),

          body: SingleChildScrollView(
            child:Container(
              child: Column(
                  children: [

                    Container(
                      child: Column(
                          children: <Widget>[
                            Container(
                              color: Color(0xFF2F2F2F2),
                              padding:
                              EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "What type of meals do you offer your guests?",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 15.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                  ]
                              ),
                            ),

                            Container(
                              height: MediaQuery.of(context).size.height * 0.078,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                margin: EdgeInsets.only(bottom: 1.0),
                                child: ListTile(
                                  dense: true,
                                  onTap: () {
                                    print("account");
                                  },
                                  title: Row(
                                    children: [
                                      Text(
                                        'Breakfast',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "What is the price?",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                decoration: BoxDecoration(
                                    border: Border.all(style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(6.0)),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        "US\$",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 13.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        width: 10.0, height: null, color: Colors.grey),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            hintText: "Enter your Bid here"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Prices are per person",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: ListTile(
                        dense: true,
                        onTap: () {
                          print("account");
                        },
                        title: Text(
                          'Lunch',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: ListTile(
                        dense: true,
                        onTap: () {
                          print("account");
                        },
                        title: Text(
                          'Dinner',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ),
                    ),


                  ]
              ),
            ),
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
                // icon: Icon(Icons.home,color: Colors.blueAccent,),
                // title: Text ('home',style: TextStyle(color: Colors.black),)
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Home();
                    }),);
                  },
                  child: ImageIcon(

                    AssetImage("assets/homeS.png",
                    ),color: Colors.grey,


                  ),
                ),
                title: Text('Home',style: TextStyle(color:Colors.black),),


              ), BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return  ReservationList();
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/reservationS.png",
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('Reservation',style: TextStyle(color:Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Availability_Owner();
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/availabilityS.png",
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('Availability',style: TextStyle(color:Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return MessageList() ;
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/msgS.png"
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('Messages',style: TextStyle(color:Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Mor();
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/moreS.png",
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('More',style: TextStyle(color:Colors.black),),

              ),
            ],
          ),
        )
    );
  }
}

