import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:ownertesting/Bids/bid_requestmain.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/Notification%20Set/TouchId&passcode.dart';
import 'package:ownertesting/Notification%20Set/donot_distrub.dart';
import 'package:ownertesting/Notification%20Set/notification_setting.dart';
import 'package:ownertesting/Propertyorigin/propertyDetails.dart';
import 'package:ownertesting/offers_origin/receive_and_accepted.dart';
import 'package:ownertesting/promotion_origin/dart/promotiontab.dart';
import 'package:ownertesting/recomondation/recomondation.dart';



class Mor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(

        // statusBarColor is used to set Status bar color in Android devices.
          statusBarColor: Colors.white,

          // To make Status bar icons color white in Android devices.
          statusBarIconBrightness: Brightness.dark,

          // statusBarBrightness is used to set Status bar icon color in iOS.
          statusBarBrightness: Brightness.dark
        // Here light means dark color Status bar icons.

      ),
    );
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;
    List<String> nameArray1 = [
      "Bid requests",
      "Recieved offers",
    ];
    List<String> imgArray1 = [
      "auction.png",
      "tags.png",
    ];
    List<String> nameArray2 = [
      "Guest reviews",
      "Guest experience",
    ];
    List<String> imgArray2 = [
      "star.png",
      "exp.png",
    ];

    List<String> nameArray3 = [
      "Property(Cimmon citadel)",
      "Meals",
      "Promotions",
      "Recommendations",
    ];

    List<String> imgArray3 = [
      "house.png",
      "meals.png",
      "surface.png",
      "gardn.png",
    ];

    List<String> nameArray4 = [
      "Notifications settings",
      "Do not disturb",
      "Face ID and passcode",
    ];

    List<String> nameArray5 = [
      "Terms and Conditions",
      "Privacy and Policy",
      "Customer Service Help",
      "Rate us",
    ];
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.black,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return Home();
                }
                ),
                );
              },
            ),
          ),
          title: Text(
            "More",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
            child: CustomScrollView(slivers: <Widget>[
              SliverStickyHeader(
                header: Container(
                  height: mediaQuery.height * 0.027,
                  color: Color(0xFF2F2F2F2),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '',
                    style: const TextStyle(color: Colors.white),
                  ),
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
                              if (nameArray1[i] == "Bid requests") {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      fullscreenDialog: false,
                                      builder: (context) =>BidRequest()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      fullscreenDialog: false,
                                      builder: (context) => ReceivedOffersTab()),
                                );
                              }
                            },
                            title: Container(
                              child: Row(children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(left: 0.0),
                                    child: imgArray1[i] == "auction.png"
                                        ? Image(
                                      image: AssetImage(
                                          "assets/auction.png"),
                                      fit: BoxFit.fill,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.025,
                                    )
                                        : Image(
                                      image:
                                      AssetImage("assets/tags.png"),
                                      fit: BoxFit.fill,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.025,
                                    )),
                                SizedBox(width: 15),
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
                              ]),
                            ),
                            trailing: Container(
                              width: MediaQuery.of(context).size.width * 0.14,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    imgArray1[i] == "auction.png"
                                        ? Badge(
                                      badgeColor: Color(0xFF61498C),
                                      shape: BadgeShape.square,

                                      padding:
                                      EdgeInsets.fromLTRB(5, 3, 5, 3),
                                      badgeContent: Text(
                                        '23',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                        : Badge(
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
                                    Image(
                                      image: AssetImage(
                                          "assets/ChevronRight.png"),
                                      fit: BoxFit.fill,
                                      height: MediaQuery.of(context).size.height *
                                          0.023,
                                    ),
                                  ]),
                            )),
                      ),
                    ),
                    childCount: 2,
                  ),
                ),
              ),
              SliverStickyHeader(
                header: Container(
                  color: Color(0xFF2F2F2F2),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text("Guest reviews",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left),
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
                        margin: EdgeInsets.only(bottom: 0.4),
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            nameArray2[i] == "Guest reviews"
                                ? Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  fullscreenDialog: false,
                                  builder: (context) => Mor()),
                            )
                                : Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  fullscreenDialog: false,
                                  builder: (context) => Mor()),
                            );

                            print("Add payment method");
                          },
                          title: Row(children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left: 0.0),
                                child: Image(
                                  image: AssetImage("assets/${imgArray2[i]}"),
                                  fit: BoxFit.fill,
                                  height:
                                  MediaQuery.of(context).size.height * 0.025,
                                )),
                            SizedBox(width: 15.0),
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
                          ]),
                          trailing: Image(
                            image: AssetImage("assets/ChevronRight.png"),
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height * 0.023,
                          ),
                        ),
                      ),
                    ),
                    childCount: imgArray2.length,
                  ),
                ),
              ),
              SliverStickyHeader(
                header: Container(
                  color: Color(0xFF2F2F2F2),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text("Property details",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left),
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
                        margin: EdgeInsets.only(bottom: 0.4),
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            if (nameArray3[i] == "Property(Cimmon citadel)") {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => PropertyDetails()),
                              );
                            } else if (nameArray3[i] == "Promotions") {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => Promotions()),
                              );
                            } else if (nameArray3[i] == "Recommendations") {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => Recommendations()),

                                  //Recommendations()
                              );
                            } else {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => Mor()),
                                  // Mealss
                              );
                            }
                          },
                          title: Row(children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left: 0.0),
                                child: imgArray3[i] == "meals.png"
                                    ? Image(
                                  image: AssetImage(
                                      "assets/${imgArray3[i]}"),
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height *
                                      0.018,
                                )
                                    : Image(
                                  image: AssetImage(
                                      "assets/${imgArray3[i]}"),
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                )),
                            SizedBox(width: 15.0),
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
                          ]),
                          trailing: Image(
                            image: AssetImage("assets/ChevronRight.png"),
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height * 0.023,
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
                  color: Color(0xFF2F2F2F2),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text("Settings",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left),
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
                        margin: EdgeInsets.only(bottom: 0.4),
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            if (nameArray4[i] == "Notifications settings") {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => Notification_Setting()),
                              );
                            } else if (nameArray4[i] == "Do not disturb") {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => Donot_Distrub(),),
                              );
                            } else {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => TouchId_Passcode()),
                              );
                            }
                          },
                          title: Text(
                            '${nameArray4[i]}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Image(
                            image: AssetImage("assets/ChevronRight.png"),
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height * 0.023,
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
                  height: mediaQuery.height * 0.05,
                  color: Color(0xFF2F2F2F2),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, i) => Container(
                      height: MediaQuery.of(context).size.height * 0.078,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        margin: EdgeInsets.only(bottom: 0.4),
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            // nameArray3[i] == "Notifications settings"
                            //     ?
                            // Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //       fullscreenDialog: false,
                            //       builder: (context) => NotificationSettings()),
                            // );
                            // : Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             NotificationSettings()),
                            //   );
                          },
                          title: Text(
                            '${nameArray5[i]}',
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
                    ),
                    childCount: nameArray5.length,
                  ),
                ),
              ),
              SliverStickyHeader(
                header: Container(
                  height: mediaQuery.height * 0.05,
                  color: Color(0xFF2F2F2F2),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, i) => Container(
                      height: MediaQuery.of(context).size.height * 0.078,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        margin: EdgeInsets.only(bottom: 0.4),
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            print("firdu");
                          },
                          title: Text(
                            "Log out",
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
                    ),
                    childCount: 1,
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
            ])));
  }
}
