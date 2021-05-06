import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ownertesting/Availability/Avilability.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/MessagesOrigin/dart/message.dart';
import 'package:ownertesting/reservation/reservationList.dart';

import 'More.dart';



class NotificationSettings extends StatefulWidget {
  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;
    List<String> nameArray1 = [
      "New Booking",
      "Booking Modification",
      "Booking Cancellation"
    ];

    List<String> nameArray2 = [
      "Ask For Offers",
      "Request Bids",
      "Offer Expiration",
    ];

    List<String> nameArray3 = [
      "Guest Reviews",
    ];
    List<String> nameArray4 = [
      "Guest Messages",
      "Messages from HotelsHippo",
    ];
    List<String> nameArray5 = [
      "Sold-Out Rooms",
      "Almost Sold-Out",
      "Daily Reports",
      "Invoices",
      "New Promotions"
    ];
    bool status = true;

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



    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          " Notifications Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
            fontFamily: 'SF Pro Display',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return ;
              }),);
            },
            child:  IconButton(icon: Icon(Icons.arrow_back_rounded,size: 20.0,),


            ),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            textColor: Color(0xFF61498C),
            onPressed: () {
              print("object");
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
      body: Container(
        child: CustomScrollView(slivers: <Widget>[
          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Bookings",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about confirmations, modifications and cancellations",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, i) => Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${nameArray1[i]}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          FlutterSwitch(

                            activeColor: Color(0xFF61498C),
                            inactiveColor: Color(0xFFD8D8D8),
                            value: status,
                            onToggle: (val) {
                              setState(() {
                                if (val) {
                                  status = !val;
                                  print("VALUE : $val");
                                } else {
                                  status = val;
                                }
                              });
                            },
                          ),

                        ],
                      ),

                    ),
                  ),
                ),
                childCount: nameArray1.length,
              ),
            ),
          ),
          ///////

          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Bids and Offers",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about receiving offers and expirations",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, i) => Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${nameArray2[i]}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          FlutterSwitch(
                            activeColor: Color(0xFF61498C),
                            inactiveColor: Color(0xFFD8D8D8),
                            value: status,
                            onToggle: (val) {
                              setState(() {
                                if (val) {
                                  status = !val;
                                  print("VALUE : $val");
                                } else {
                                  status = val;
                                }
                              });
                            },
                          ),
                        ],
                      ),

                    ),
                  ),
                ),
                childCount: nameArray2.length,
              ),
            ),
          ),


          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Reviews",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications to write a review, rate your check-in, upload photos and see your review live!",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, i) => Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${nameArray3[i]}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          FlutterSwitch(
                            width: 51.0,
                            height: 31.0,
                            activeColor: Color(0xFF61498C),
                            inactiveColor: Color(0xFFD8D8D8),
                            value: status,
                            onToggle: (val) {
                              setState(() {
                                if (val) {
                                  status = !val;
                                  print("VALUE : $val");
                                } else {
                                  status = val;
                                }
                              });
                            },
                          ),

                        ],
                      ),

                    ),
                  ),
                ),
                childCount: nameArray3.length,
              ),
            ),
          ),



          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Messages",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about the Refer A Friend program, the status of your referral rewards, and new promotional campaigns.",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, i) => Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${nameArray4[i]}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          FlutterSwitch(
                            width: 51.0,
                            height: 31.0,
                            activeColor: Color(0xFF61498C),
                            inactiveColor: Color(0xFFD8D8D8),
                            value: status,
                            onToggle: (val) {
                              setState(() {
                                if (val) {
                                  status = !val;
                                  print("VALUE : $val");
                                } else {
                                  status = val;
                                }
                              });
                            },
                          ),
                        ],
                      ),

                    ),
                  ),
                ),
                childCount: nameArray4.length,
              ),
            ),
          ),


          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Loyalty Program",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about our loyalty program, your membership status, and progress.",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),

            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, i) => Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${nameArray5[i]}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          FlutterSwitch(
                            activeColor: Color(0xFF61498C),
                            inactiveColor: Color(0xFFD8D8D8),
                            value: status,
                            onToggle: (val) {
                              setState(() {
                                if (val) {
                                  status = !val;
                                  print("VALUE : $val");
                                }
                                else {
                                  status = val;
                                }
                              });
                            },
                          ),

                        ],
                      ),

                    ),
                  ),
                ),
                childCount: nameArray5.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: mediaQuery.height * 0.06,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),

        ],
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



    );
  }
}
