import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ownertesting/Availability/Avilability.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/MessagesOrigin/dart/message.dart';
import 'package:ownertesting/Moreorigin/More.dart';
import 'package:ownertesting/reservation/reservationDetails.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


import 'package:table_calendar/table_calendar.dart';


class ReservationList extends StatefulWidget {
  @override
  _ReservationListState createState() => _ReservationListState();
}



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




class _ReservationListState extends State<ReservationList> {
  List<String> nameArray = [
    "Kalinga Jayakodi",
    "Minoli Perera",
    "Kalinga Jayakodi",
    "Kalinga Jayakodi",
    "Minoli Perera",
    "Kalinga Jayakodi",
    "Kalinga Jayakodi",
    "Minoli Perera",
    "Kalinga Jayakodi",
    "Kalinga Jayakodi",
  ];

  List<String> descArray = [
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
    "1 nights - 4 guests - 2 room .",
  ];
  List<String> imgArray = [

  ];

  List<String> timeArray = [
    "12:56 PM",
    "09:12 PM",
    "07:30 AM",
    "12:56 PM",
    "09:12 PM",
    "07:30 AM",
    "12:56 PM",
    "09:12 PM",
    "07:30 AM",
    "12:56 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFF8F8F8),
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Text(
              "Reservations",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              FlatButton(
                // textColor: Color(0xFF61498C),
                onPressed: () {
                  /* Navigator.push(
                context,
                CupertinoPageRoute(
                    fullscreenDialog: false,
                    builder: (context) => DoubleRoom()),
              ); */
                },
                child: Icon(Icons.calendar_today),
                shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
              ),
            ],
          ),
          body: Align(
            child: Stack(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Column(children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.88,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: new BoxDecoration(
                            borderRadius:
                            new BorderRadius.all(new Radius.circular(10.0)),
                            color: Color(0xFF8E8E93).withOpacity(0.24)),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              hintText: "Search by reservation number",
                              prefixIcon: Icon(Icons.search),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                      Divider(),
                      Expanded(child: _myListView(context)),
                    ])),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.03,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          // Sign In Button
                          new FlatButton(
                            splashColor: Colors.white54,
                            color: Color(0xFF5D4788),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     CupertinoPageRoute(
                              //         fullscreenDialog: true,
                              //         builder: (context) => Filters()));
                            },
                            child: new Container(
                                padding: EdgeInsets.only(left: 0.0),
                                //height: MediaQuery.of(context).size.height * 0.05,
                                child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Image(
                                    image:
                                    AssetImage("assets/sort.png"),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),
                          Container(
                            width: 1,
                            color: Colors.white,
                          ),
                          new FlatButton(
                            splashColor: Colors.white54,
                            color: Color(0xFF5D4788),
                            onPressed: () {},
                            child: new Container(
                                padding: EdgeInsets.only(left: 0.0),
                                child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Image(
                                    image:
                                    AssetImage("assets/filter.png"),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
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




        )
    );
  }

  //
  //Recommend ListView
  Widget _myListView(BuildContext context) {
    return nameArray.isNotEmpty
        ? AnimationLimiter(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: nameArray.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                horizontalOffset: 200,
                child: FadeInAnimation(
                  child: Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    actions: <Widget>[
                      IconSlideAction(
                        caption: 'Read',
                        color: Colors.black38,
                        icon: Icons.message,
                        onTap: () {
                          //  setState(() {
                          //   this.isShow = false;
                          // });
                        },
                      ),
                    ],
                    secondaryActions: <Widget>[
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () {
                          setState(() {
                            nameArray.removeAt(index);
                            descArray.removeAt(index);
                            timeArray.removeAt(index);
                            imgArray.removeAt(index);
                          });
                        },
                      ),
                    ],
                    child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      margin: EdgeInsets.fromLTRB(1.0, 4.0, 1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: ReservationDetails(),
                              withNavBar:
                              false, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                            );
                          },
                          // leading: Container(
                          //   child: Image(
                          //     image: AssetImage(
                          //         "assets/reservation/Rectangle 1475.png"),
                          //     fit: BoxFit.fill,
                          //     height: MediaQuery.of(context).size.height * 0.06,
                          //   ),
                          // ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Thu Aug 14',
                                style: TextStyle(
                                  color: Color(0xFF484848).withOpacity(0.78),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/Rectangle 1475.png"),
                                      fit: BoxFit.fill,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.06,
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${nameArray[index]}',
                                        style: TextStyle(
                                          color: Color(0xFF4B4B4B),
                                          fontSize: 17.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '${descArray[index]}',
                                            style: TextStyle(
                                              color: Color(0xFF4B4B4B),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '${timeArray[index]}',
                                            style: TextStyle(
                                              color: Color(0xFF4B4B4B),
                                              fontSize: 10.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          trailing: Stack(children: <Widget>[
                            Icon(
                              Icons.mail_outline,
                              color: Color(0xFF484848),
                              size:
                              MediaQuery.of(context).size.height * 0.037,
                            ),
                            Positioned(
                              top: -5,
                              right: 0,
                              child: Visibility(
                                child: Badge(
                                  badgeColor: Colors.red,
                                  shape: BadgeShape.circle,
                                  // borderRadius: 3,
                                  // padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                                  badgeContent: Text(
                                    '',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                maintainSize: true,
                                maintainAnimation: true,
                                maintainState: true,
                                visible: index == 0 ? true : false,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          // separatorBuilder: (context, index) {
          //   return Divider(
          //     height: 1,
          //   );
          // },
        ))
        : Container(
      child: Center(
        child: Text(
          "Nothing here",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontFamily: 'SF Pro Display',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      //color: Colors.red,
    );
  }
}
