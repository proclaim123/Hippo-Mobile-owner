import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ownertesting/Availability/Avilability.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/MessagesOrigin/dart/message.dart';
import 'package:ownertesting/Moreorigin/More.dart';
import 'package:ownertesting/reservation/reservationList.dart';



class DoNotDisturb extends StatefulWidget {
  @override
  _DoNotDisturbState createState() => _DoNotDisturbState();
}

class _DoNotDisturbState extends State<DoNotDisturb> {
  @override
  Widget build(BuildContext context) {
    bool status = true;
    // bool status1 = true;


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
          "Do Not Disturb",
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
                return Mor();
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
              // Navigator.push(
              //                   context,
              //                   CupertinoPageRoute(
              //                       fullscreenDialog: false,
              //                       builder: (context) => PaymentMethodList()),
              //                 );
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
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xFF2F2F2F2),
                  padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Quiet hours",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "When \"do not disturb\" enabled. alerts arrives during Quiet hours will be silenced",
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Enabled',
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
                                print("VALUE : $val");
                                status = val;
                                print("status : $status");
                              });
                            },
                          ),

                        ],
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "From",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 14.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "21:00",
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
                Container(
                  height: 35,
                  color: Colors.grey,
                  width: 1,
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "To",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 14.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "21:00",
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
