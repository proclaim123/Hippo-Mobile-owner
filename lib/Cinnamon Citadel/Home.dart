import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:ownertesting/Availability/Availabilitynew.dart';
import 'package:ownertesting/Availability/Avilability.dart';
import 'package:ownertesting/Bids/bid_requestmain.dart';
import 'package:ownertesting/MessagesOrigin/dart/message.dart';
import 'package:ownertesting/More/More.dart';
import 'package:ownertesting/Moreorigin/More.dart';
import 'package:ownertesting/offers_origin/receive_and_accepted.dart';
import 'package:ownertesting/reservation/reservationList.dart';
import 'expendable_bottom_sheet.dart';




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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


  GlobalKey<ExpandableBottomSheetState> key = new GlobalKey();

  List<String> titleArray = [
    "Welcome new-year booking with an \nEarly 2021 deals!",
    "Welcome new-year booking with an \nEarly 2021 deals!",
  ];
  List<String> descArray = [
    "Booking on our site peak in Jan-optimize \nfor this extra interest by offering\n 20% off.",
    "Booking on our site peak in Jan-optimize \nfor this extra interest by offering\n 20% off.",
  ];
  List<String> imgArray = [
    "recommBg.png",
    "recommBg.png",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark),
    );
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Center(
            child: FlatButton(
              onPressed: () {
                showGeneralDialog(
                  barrierLabel: "Label",
                  barrierDismissible: true,
                  barrierColor: Colors.black.withOpacity(0.4),
                  transitionDuration: Duration(milliseconds: 500),
                  context: context,
                  pageBuilder: (context, anim1, anim2) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child:
                          SizedBox.expand(child: BottomSheetExample()),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20))),
                        ),
                      ),
                    );
                  },
                  transitionBuilder: (context, anim1, anim2, child) {
                    return SlideTransition(
                      position:
                      Tween(begin: Offset(0, 1), end: Offset(0, 0))
                          .animate(anim1),
                      child: child,
                    );
                  },
                );
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => BottomSheetExample()));
                print("next");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Cinnamon Citadel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Badge(
                    shape: BadgeShape.square,
                    padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                    badgeContent: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.0,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  new Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(top: 1.0),
                    height: 6,
                    child: Image(
                      image: AssetImage("assets/ChevronDwn.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Align(
              child: Container(
                  width: mediaQuery.width * 0.95,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(children: <Widget>[
                    AnimationLimiter(
                      child: Container(
                        width: mediaQuery.width * 0.95,
                        height: mediaQuery.height * 0.34,
                        child: AnimationConfiguration.staggeredList(
                          position: 0,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            horizontalOffset: 200,
                            child: FadeInAnimation(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Stack(children: <Widget>[
                                  new Container(
                                    width: mediaQuery.width * 0.95,
                                    height: mediaQuery.height * 0.34,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/Rectangle.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    margin:
                                    EdgeInsets.fromLTRB(20, 20, 18, 20),
                                    width: mediaQuery.width * 0.95,
                                    height: mediaQuery.height * 0.34,
                                    child: Column(children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Daily overview",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Yesterday gross values",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                fontFamily:
                                                'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "\$ 120",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                fontFamily:
                                                'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Yesterday gross values",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                fontFamily:
                                                'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "\$ 120",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                fontFamily:
                                                'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Reviews",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0,
                                                fontFamily:
                                                'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "6",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                fontFamily:
                                                'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ]),
                                      SizedBox(height: 12),
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Stack(
                                                  children: <Widget>[
                                                    new Container(
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: AspectRatio(
                                                        aspectRatio: 1 / 1,
                                                        child: Image(
                                                          image: AssetImage(
                                                              "assets/circle.png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                      Alignment.center,
                                                      width:
                                                      mediaQuery.width *
                                                          0.155,
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: Text(
                                                        "0",
                                                        style: TextStyle(
                                                          color:
                                                          Colors.white,
                                                          fontSize: 17.0,
                                                          fontFamily:
                                                          'SF Pro Display',
                                                          fontStyle:
                                                          FontStyle
                                                              .normal,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 6.0),
                                                Text(
                                                  "Departures",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13.0,
                                                    fontFamily:
                                                    'SF Pro Display',
                                                    fontStyle:
                                                    FontStyle.normal,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Stack(
                                                  children: <Widget>[
                                                    new Container(
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: AspectRatio(
                                                        aspectRatio: 1 / 1,
                                                        child: Image(
                                                          image: AssetImage(
                                                              "assets/circle.png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                      Alignment.center,
                                                      width:
                                                      mediaQuery.width *
                                                          0.155,
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: Text(
                                                        "4",
                                                        style: TextStyle(
                                                          color:
                                                          Colors.white,
                                                          fontSize: 17.0,
                                                          fontFamily:
                                                          'SF Pro Display',
                                                          fontStyle:
                                                          FontStyle
                                                              .normal,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 6.0),
                                                Text(
                                                  "Arrivals",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13.0,
                                                    fontFamily:
                                                    'SF Pro Display',
                                                    fontStyle:
                                                    FontStyle.normal,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Stack(
                                                  children: <Widget>[
                                                    new Container(
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: AspectRatio(
                                                        aspectRatio: 1 / 1,
                                                        child: Image(
                                                          image: AssetImage(
                                                              "assets/circle.png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      //color: Colors.red,
                                                      alignment:
                                                      Alignment.center,
                                                      width:
                                                      mediaQuery.width *
                                                          0.155,
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: Text(
                                                        "1",
                                                        style: TextStyle(
                                                          color:
                                                          Colors.white,
                                                          fontSize: 17.0,
                                                          fontFamily:
                                                          'SF Pro Display',
                                                          fontStyle:
                                                          FontStyle
                                                              .normal,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 6.0),
                                                Text(
                                                  "Stay-overs",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13.0,
                                                    fontFamily:
                                                    'SF Pro Display',
                                                    fontStyle:
                                                    FontStyle.normal,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Stack(
                                                  children: <Widget>[
                                                    new Container(
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: AspectRatio(
                                                        aspectRatio: 1 / 1,
                                                        child: Image(
                                                          image: AssetImage(
                                                              "assets/circle.png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      //color: Colors.red,
                                                      alignment:
                                                      Alignment.center,
                                                      width:
                                                      mediaQuery.width *
                                                          0.155,
                                                      height: mediaQuery
                                                          .height *
                                                          0.085,
                                                      child: Text(
                                                        "4",
                                                        style: TextStyle(
                                                          color:
                                                          Colors.white,
                                                          fontSize: 17.0,
                                                          fontFamily:
                                                          'SF Pro Display',
                                                          fontStyle:
                                                          FontStyle
                                                              .normal,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 6.0),
                                                Text(
                                                  "Vacancies",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13.0,
                                                    fontFamily:
                                                    'SF Pro Display',
                                                    fontStyle:
                                                    FontStyle.normal,
                                                    fontWeight:
                                                    FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ]),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.0),
                    AnimationLimiter(

                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context){
                            return BidRequest();
                          }),
                            //  Booking()
                          );
                        },
                        child: Container(

                          width: mediaQuery.width * 0.95,
                          height: mediaQuery.height * 0.095,
                          margin: EdgeInsets.only(top: 0.0),
                          child: AnimationConfiguration.staggeredList(
                            position: 0,
                            duration: const Duration(milliseconds: 375),
                            child: SlideAnimation(
                              verticalOffset: 200,
                              child: FadeInAnimation(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(6.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0,
                                        right: 13.0,
                                        top: 8,
                                        bottom: 6),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Container(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Container(
                                                        // color: Colors.red,
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: <
                                                                Widget>[
                                                              new Container(
                                                                // color: Colors.red,
                                                                //width: mediaQuery.width * 0.1,
                                                                height: 17,
                                                                child:
                                                                AspectRatio(
                                                                  aspectRatio:
                                                                  1 / 1,
                                                                  child:
                                                                  Image(
                                                                    image: AssetImage("assets/auction.png"),
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 6),
                                                              Text(
                                                                "Bids Requested",
                                                                style:
                                                                TextStyle(
                                                                  color: Color(
                                                                      0xFF4B4B4B),
                                                                  fontSize:
                                                                  16.0,
                                                                  fontFamily:
                                                                  'SF Pro Display',
                                                                  fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                ),
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Respond before they appear",
                                                    style: TextStyle(
                                                      color:
                                                      Color(0xFF8A8A8A),
                                                      fontSize: 13.0,
                                                      fontFamily:
                                                      'SF Pro Display',
                                                      fontStyle:
                                                      FontStyle.normal,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Row(children: <Widget>[
                                            Badge(
                                              badgeColor: Color(0xFF61498C),
                                              shape: BadgeShape.square,
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 3, 5, 3),
                                              badgeContent: Text(
                                                '23',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 9.0,
                                                  fontFamily:
                                                  'SF Pro Display',
                                                  fontStyle:
                                                  FontStyle.normal,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            new Container(
                                                child: Icon(
                                                    Icons.chevron_right)),
                                          ])
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return ReceivedOffersTab();
                        }),
                          //  Booking()
                          //ReceivedOffersTab()
                        );
                      },
                      child: Container(
                        width: mediaQuery.width * 0.95,
                        height: mediaQuery.height * 0.095,
                        margin: EdgeInsets.only(top: 0.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 13.0, top: 8, bottom: 6),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              alignment:
                                              Alignment.centerLeft,
                                              child: Container(
                                                // color: Colors.red,
                                                child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: <Widget>[
                                                      new Container(
                                                        // color: Colors.red,
                                                        //width: mediaQuery.width * 0.1,
                                                        height: 17,
                                                        child: AspectRatio(
                                                          aspectRatio:
                                                          1 / 1,
                                                          child: Image(
                                                            image: AssetImage(
                                                                "assets/tags.png"),
                                                            fit:
                                                            BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 6),
                                                      Text(
                                                        "Recieved Offers",
                                                        style: TextStyle(
                                                          color: Color(
                                                              0xFF4B4B4B),
                                                          fontSize: 16.0,
                                                          fontFamily:
                                                          'SF Pro Display',
                                                          fontStyle:
                                                          FontStyle
                                                              .normal,
                                                          fontWeight:
                                                          FontWeight
                                                              .w600,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Respond before they appear",
                                            style: TextStyle(
                                              color: Color(0xFF8A8A8A),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Row(children: <Widget>[
                                    Badge(
                                      badgeColor: Color(0xFFFFC107),
                                      shape: BadgeShape.square,
                                      padding:
                                      EdgeInsets.fromLTRB(5, 3, 5, 3),
                                      badgeContent: Text(
                                        '12',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    new Container(
                                        child: Icon(Icons.chevron_right)),
                                  ])
                                ]),
                          ),
                        ),
                      ),
                    ),
                    //RecommendListview
                    Container(
                        child: _myListView()
                    ),
                  ]))),
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
                    return Availability();
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

      ),
    );
  }

//Recommend ListView
  Widget _myListView() {
    return this.titleArray.isNotEmpty
        ? AnimationLimiter(
      child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: titleArray.length,
          itemBuilder: (context, index) {
            var nameArr = titleArray[index];

            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: new Container(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.95,
                child: SlideAnimation(
                  verticalOffset: 200,
                  child: FadeInAnimation(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      // margin: EdgeInsets.only(
                      //     right: MediaQuery.of(context).size.width * 0.05,
                      //     left: MediaQuery.of(context).size.width * 0.05,
                      //     bottom: 0,
                      //     top: 10),
                      child: Stack(children: <Widget>[
                        new Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height:
                          MediaQuery.of(context).size.height * 0.22,
                          child: Image(
                            image: AssetImage(
                                "assets/${imgArray[index]}"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.008,
                          right:
                          -MediaQuery.of(context).size.height * 0.04,
                          //alignment: Alignment.centerRight,
                          child: Container(
                            //color: Colors.red,
                            alignment: Alignment.centerRight,
                            height:
                            MediaQuery.of(context).size.height * 0.03,
                            child: RaisedButton(
                              child: Image(
                                image:
                                AssetImage("assets/cross.png"),
                                fit: BoxFit.fill,
                              ),
                              color: Colors.transparent,
                              elevation: 0.0,
                              //splashColor: Colors.blueGrey,
                              onPressed: () {
                                // Perform some action
                                setState(() {
                                  titleArray.removeAt(index);
                                  descArray.removeAt(index);
                                  imgArray.removeAt(index);
                                });
                                // nameArray.remove(index);
                                print("ButtonClicked");
                              },
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 30, 10),
                            child: Column(children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Recommend",
                                  style: TextStyle(
                                    color: Color(0xFFFFBB00),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  nameArr,
                                  style: TextStyle(
                                    color: Color(0xFF4E4747),
                                    fontSize: 17.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  descArray[index],
                                  style: TextStyle(
                                    color: Color(0xFF505050),
                                    fontSize: 13.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              // SizedBox(height: 5),
                            ])),
                      ]),
                    ),
                  ),
                ),
              ),
            );
          }),
    )
        : Container(
      margin: EdgeInsets.only(top: 30),
      child: Align(
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
