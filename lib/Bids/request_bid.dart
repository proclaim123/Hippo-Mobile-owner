import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class RequestedBids extends StatefulWidget {
  @override
  _RequestedBidsState createState() => _RequestedBidsState();
}

class _RequestedBidsState extends State<RequestedBids> {
  List<String> nameArray = [
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
  ];

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
    return mainBody();
  }

  Widget mainBody() {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: _myListView(),
        ),
      ),
    );
  }

  Widget _myListView() {
    return this.nameArray.isNotEmpty
        ? AnimationLimiter(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: nameArray.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 200,
                child: FadeInAnimation(
                  child: MyCard(),
                ),
              ),
            );
          }),
    )
        : Container(
      child: Center(
          child: Text(
            "No offers available",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          )),
      //color: Colors.red,
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 0.0),
            child: ScrollOnExpand(
                child: Card(
                  elevation: 3.0,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 12, 10, 0),
                            child: Text(
                              "Thurs Aug 14",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                        ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Kalinga Jayakodi",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          fontFamily: 'SF Pro Text',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF5CB85C),
                                          borderRadius: BorderRadius.circular(3.0),
                                        ),
                                        padding: EdgeInsets.all(7.0),
                                        child: Text(
                                          "SEND A BID",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 7),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "1 night - 2 guest - 1 room",
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFF484848),
                                      fontSize: 14.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //Expand Widget
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 6),
                              Divider(height: 3, color: Colors.grey),
                              SizedBox(height: 6),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Check in:",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Sept 21, 2019",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Check Out:",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Sept 22, 2019",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Booking reference:",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "3821255854",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Preferred language:",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "English(US)",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 6),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Basis",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Full Board",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Number of sent bids",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "5 ",
                                            softWrap: true,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Speacial notes:",
                                      softWrap: true,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xFF2C2C2C),
                                        fontSize: 12.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ]),
                              Text(
                                "Room with a better sea view",
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFF2C2C2C),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5.0),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: const ExpandableThemeData(crossFadePoint: 0),
                              ),
                            );
                          },
                        ),
                        // Expandable(
                        //   collapsed: buildCollapsed2(),
                        //   expanded: buildExpanded2(),
                        // ),
                        // Expandable(
                        //   collapsed: buildCollapsed3(),
                        //   expanded: buildExpanded3(),
                        // ),
                      ]),
                ))));
  }
}
