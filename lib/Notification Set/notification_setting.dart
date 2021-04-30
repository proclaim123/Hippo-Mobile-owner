import 'package:flutter/material.dart';
import 'package:ownertesting/Moreorigin/More.dart';
import 'package:ownertesting/Notification%20Set/TouchId&passcode.dart';


class Notification_Setting extends StatefulWidget {
  @override
  _Notification_SettingState createState() => _Notification_SettingState();
}

class _Notification_SettingState extends State<Notification_Setting> {
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



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Notification Settings",style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal),),
            leading:Padding(
                padding: const EdgeInsets.all(8.0),
                child:IconButton(
                  icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Mor();

                    },
                    ),);

                  },

                )
            ),
            actions: [
              Text("Done",style: TextStyle(color: Color(0xFF61498C),fontSize: 16.0,fontWeight: FontWeight.normal),),
            ],
          ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Bookings",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                    Text("Get notifications about confirmations,modifications \n and cancellations",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                  ],
                                ),
                                SizedBox(height: 10.0,),
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:<Widget> [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("New Booking" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                          SizedBox(
                                            width: 60.0,
                                            height: 50.0,

                                            child: Switch(
                                                materialTapTargetSize: MaterialTapTargetSize.padded,
                                                activeColor: Color(0xFF61498C),
                                                value: true,
                                                onChanged: (value) {
                                                  Navigator.push(context, MaterialPageRoute(builder:(context){
                                                    return TouchId_Passcode();
                                                  }
                                                  ),
                                                  );
                                                  // print("VALUE : $value");
                                                  // setState(() {
                                                  //status = value;
                                                }
                                            ),
                                          )
                                        ],
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Booking Modification" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                          SizedBox(
                                            width: 60.0,
                                            height: 50.0,

                                            child: Switch(
                                                materialTapTargetSize: MaterialTapTargetSize.padded,
                                                activeColor: Colors.deepPurple,
                                                value: true,
                                                onChanged: (value) {
                                                  // print("VALUE : $value");
                                                  // setState(() {
                                                  //status = value;
                                                }
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Booking Cancellation" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                          SizedBox(
                                            width: 60.0,
                                            height: 50.0,

                                            child: Switch(
                                                materialTapTargetSize: MaterialTapTargetSize.padded,
                                                activeColor: Color(0xFF61498C),
                                                value: true,
                                                onChanged: (value) {
                                                  // print("VALUE : $value");
                                                  // setState(() {
                                                  //status = value;
                                                }
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.0,),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Bids and Offers",style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                      Text("Get notification about receiving offers and expiration",style: TextStyle(color: Colors.blueGrey,fontSize: 10.0,fontWeight: FontWeight.normal),),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Ask For Offers" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                          SizedBox(
                                            width: 60.0,
                                            height: 50.0,

                                            child: Switch(
                                                materialTapTargetSize: MaterialTapTargetSize.padded,
                                                activeColor: Color(0xFF61498C),
                                                value: true,
                                                onChanged: (value) {
                                                  // print("VALUE : $value");
                                                  // setState(() {
                                                  //status = value;
                                                }
                                            ),
                                          )
                                        ],
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Request Bids" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                          SizedBox(
                                            width: 60.0,
                                            height: 50.0,

                                            child: Switch(
                                                materialTapTargetSize: MaterialTapTargetSize.padded,
                                                activeColor: Color(0xFF61498C),
                                                value: true,
                                                onChanged: (value) {
                                                  // print("VALUE : $value");
                                                  // setState(() {
                                                  //status = value;
                                                }
                                            ),
                                          )
                                        ],
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Offer Expiration" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                          SizedBox(
                                            width: 60.0,
                                            height: 50.0,

                                            child: Switch(
                                                materialTapTargetSize: MaterialTapTargetSize.padded,
                                                activeColor: Color(0xFF61498C),
                                                value: true,
                                                onChanged: (value) {
                                                  // print("VALUE : $value");
                                                  // setState(() {
                                                  //status = value;
                                                }
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.0,),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("reviews",style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                      Text("Get notification about the Refer A Friend Program, the Status\n your referral rewards,and new promotional campaigns.",style: TextStyle(color: Colors.blueGrey,fontSize: 12.0,fontWeight: FontWeight.normal),),
                                    ],
                                  ),
                                ),
                          Divider(),
                         Container(
                                     child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                               Text("Gust Reviews" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                               SizedBox(
                                                 width: 60.0,
                                                 height: 50.0,

                                                     child: Switch(
                                                      materialTapTargetSize: MaterialTapTargetSize.padded,
                                                     activeColor: Color(0xFF61498C),
                                                      value: true,
                                                      onChanged: (value) {
                                                      // print("VALUE : $value");
                                                      // setState(() {
                                                      //status = value;
                                                        }
                                                        ),
                                                        )
                                                        ],
                                                        ),
                                        ],
                                     )
                         ),
                                SizedBox(height: 30.0,),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Messages",style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                      Text("Get notification about the Refer A Friend Program, the Status\n your referral rewards,and new promotional campaigns.",style: TextStyle(color: Colors.blueGrey,fontSize: 12.0,fontWeight: FontWeight.normal),),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Gust Messages" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                            SizedBox(
                                              width: 60.0,
                                              height: 50.0,

                                              child: Switch(
                                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                                  activeColor: Color(0xFF61498C),
                                                  value: true,
                                                  onChanged: (value) {
                                                    // print("VALUE : $value");
                                                    // setState(() {
                                                    //status = value;
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Messages from HotelsHippo" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                            SizedBox(
                                              width: 60.0,
                                              height: 50.0,

                                              child: Switch(
                                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                                  activeColor: Color(0xFF61498C),
                                                  value: true,
                                                  onChanged: (value) {
                                                    // print("VALUE : $value");
                                                    // setState(() {
                                                    //status = value;
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                ),
                                SizedBox(height: 30.0,),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Loyalty Program",style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                      Text("Get notification about the Refer A Friend Program, the Status\n your referral rewards,and new promotional campaigns.",style: TextStyle(color: Colors.blueGrey,fontSize: 12.0,fontWeight: FontWeight.normal),),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Sold-out Rooms" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                            SizedBox(
                                              width: 60.0,
                                              height: 50.0,

                                              child: Switch(
                                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                                  activeColor: Color(0xFF61498C),
                                                  value: true,
                                                  onChanged: (value) {
                                                    // print("VALUE : $value");
                                                    // setState(() {
                                                    //status = value;
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Almost Sold-out" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                            SizedBox(
                                              width: 60.0,
                                              height: 50.0,

                                              child: Switch(
                                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                                  activeColor: Color(0xFF61498C),
                                                  value: true,
                                                  onChanged: (value) {
                                                    // print("VALUE : $value");
                                                    // setState(() {
                                                    //status = value;
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Daily Reports" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                            SizedBox(
                                              width: 60.0,
                                              height: 50.0,

                                              child: Switch(
                                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                                  activeColor: Color(0xFF61498C),
                                                  value: true,
                                                  onChanged: (value) {
                                                    // print("VALUE : $value");
                                                    // setState(() {
                                                    //status = value;
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Invoices" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                            SizedBox(
                                              width: 60.0,
                                              height: 50.0,

                                              child: Switch(
                                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                                  activeColor: Color(0xFF61498C),
                                                  value: true,
                                                  onChanged: (value) {
                                                    // print("VALUE : $value");
                                                    // setState(() {
                                                    //status = value;
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("New Promotions" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                                            SizedBox(
                                              width: 60.0,
                                              height: 50.0,

                                              child: Switch(
                                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                                  activeColor: Color(0xFF61498C),
                                                  value: true,
                                                  onChanged: (value) {
                                                    // print("VALUE : $value");
                                                    // setState(() {
                                                    //status = value;
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                ),


                ],
                ),
              ),
            ),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: _selectedpage,
            onTap: (int index) {
              setState(() {
                _selectedpage =index;

              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text ('home')
              ), BottomNavigationBarItem(
                  icon: Icon(Icons.work_outlined),
                  title: Text ('Reservation')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_sharp),
                  title: Text ('Availability')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.email),
                  title: Text ('Messages')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz_rounded),
                  title: Text ('More')
              ),
            ],

          ),

        )
    );
  }
}
