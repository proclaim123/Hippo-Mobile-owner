import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';



class ReservationDetails extends StatefulWidget {
  @override
  _ReservationDetailsState createState() => _ReservationDetailsState();
}

class _ReservationDetailsState extends State<ReservationDetails> {
//share image metthod
  Future<void> _shareImage() async {
    try {
      final ByteData bytes = await rootBundle.load('assets/AppIcon.png');
      await Share.file(
        'Share',
        'esys.png',
        bytes.buffer.asUint8List(),
        'image/png',
      );
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: new PreferredSize(
              preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Arriving on Mon, Dec 23, 2019",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  AppBar(
                    backgroundColor: Colors.white,
                    brightness: Brightness.light,
                    iconTheme: IconThemeData(color: Colors.black),
                    elevation: 4.0,
                    title: Text(
                      "Kalinga Jayakodi",
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
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.transparent)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
                  child: Column(
                    children: <Widget>[
                      Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Check Out",
                                            style: TextStyle(
                                              color: Color(0xFF484848)
                                                  .withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "Mon, Jan 12, 2020",
                                            style: TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Nights",
                                            style: TextStyle(
                                              color: Color(0xFF484848)
                                                  .withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Guests",
                                            style: TextStyle(
                                              color: Color(0xFF484848)
                                                  .withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "2 Adults",
                                            style: TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Rooms",
                                            style: TextStyle(
                                              color: Color(0xFF484848)
                                                  .withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Reservation number",
                                            style: TextStyle(
                                              color: Color(0xFF484848)
                                                  .withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "6543218798",
                                            style: TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Arrival time",
                                            style: TextStyle(
                                              color: Color(0xFF484848)
                                                  .withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "No time provided",
                                            style: TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 15.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      MyGuestDetailCard(),
                      SizedBox(height: 8.0),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Total reservation price",
                                      style: TextStyle(
                                        color:
                                        Color(0xFF484848).withOpacity(0.6),
                                        fontSize: 15.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "US\$ 120",
                                      style: TextStyle(
                                        color: Color(0xFF484848),
                                        fontSize: 15.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Requested Bid",
                                      style: TextStyle(
                                        color:
                                        Color(0xFF484848).withOpacity(0.6),
                                        fontSize: 15.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        color: Color(0xFF484848),
                                        fontSize: 15.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //
                      MyRoomDetailCard(),
                      Container(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        width: double.infinity,
                        child: OutlineButton(
                          borderSide: BorderSide(
                            color: Color(0xFF4C3C73), //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 1.5, //width of the border
                          ),
                          splashColor: Colors.grey,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06,
                              top: 10,
                              bottom: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'Add a note',
                            style: TextStyle(
                              color: Color(0xFF4C3C73),
                              fontSize: 15.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        width: double.infinity,
                        child: OutlineButton(
                          borderSide: BorderSide(
                            color: Color(0xFF4C3C73), //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 1.5, //width of the border
                          ),
                          splashColor: Colors.grey,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06,
                              top: 10,
                              bottom: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'Room is ready',
                            style: TextStyle(
                              color: Color(0xFF4C3C73),
                              fontSize: 15.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        width: double.infinity,
                        child: OutlineButton(
                          borderSide: BorderSide(
                            color: Color(0xFF636363), //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 1.5, //width of the border
                          ),
                          splashColor: Colors.grey,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06,
                              top: 10,
                              bottom: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'Report guest misconduct',
                            style: TextStyle(
                              color: Color(0xFF484848),
                              fontSize: 15.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        width: double.infinity,
                        child: OutlineButton(
                          borderSide: BorderSide(
                            color: Color(0xFF636363), //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 1.5, //width of the border
                          ),
                          splashColor: Colors.grey,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06,
                              top: 10,
                              bottom: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'Mark as no show',
                            style: TextStyle(
                              color: Color(0xFF484848),
                              fontSize: 15.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        width: double.infinity,
                        child: OutlineButton(
                          borderSide: BorderSide(
                            color: Color(0xFF636363), //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 1.5, //width of the border
                          ),
                          splashColor: Colors.grey,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06,
                              right: MediaQuery.of(context).size.width * 0.06,
                              top: 10,
                              bottom: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'Request to cancel reservation',
                            style: TextStyle(
                              color: Color(0xFF484848),
                              fontSize: 15.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            bottomSheet: _myBottomSheet()));
  }

//BottomSheet
  Widget _myBottomSheet() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
      ),
      padding: EdgeInsets.only(top: 8.0),
      height: MediaQuery.of(context).size.height * 0.09,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.call,
                  color: Color(0xFF61498C),
                  size: MediaQuery.of(context).size.height * 0.045,
                ),
                Text(
                  'Call',
                  style: TextStyle(
                    color: Color(0xFF61498C),
                    fontSize: 12.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Color(0xFF61498C),
                  size: MediaQuery.of(context).size.height * 0.045,
                ),
                Text(
                  'Message',
                  style: TextStyle(
                    color: Color(0xFF61498C),
                    fontSize: 12.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () async {
              print("share");
              await _shareImage();
            },
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.share,
                  color: Color(0xFF61498C),
                  size: MediaQuery.of(context).size.height * 0.045,
                ),
                Text(
                  'Share',
                  style: TextStyle(
                    color: Color(0xFF61498C),
                    fontSize: 12.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
class MyGuestDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ScrollOnExpand(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 7,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Guest",
                                        style: TextStyle(
                                          color: Color(0xFF484848).withOpacity(0.6),
                                          fontSize: 15.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Kalinga Jayakodi",
                                        style: TextStyle(
                                          color: Color(0xFF484848),
                                          fontSize: 15.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "From",
                                        style: TextStyle(
                                          color: Color(0xFF484848).withOpacity(0.6),
                                          fontSize: 15.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Srilanka",
                                        style: TextStyle(
                                          color: Color(0xFF484848),
                                          fontSize: 15.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Expand Widget
                          expanded: Padding(
                            padding: const EdgeInsets.fromLTRB(6.0, 0, 6, 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(children: <Widget>[
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "From",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "Srilanka",
                                          style: TextStyle(
                                            color: Color(0xFF484848),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Address",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "6 Francis Mahadeva Avenue, 04, Colombo, LK",
                                          style: TextStyle(
                                            color: Color(0xFF484848),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Contact",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "0748558859",
                                          style: TextStyle(
                                            color: Color(0xFF61498C),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Email",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "kalingajayakodi@gmail.com",
                                          style: TextStyle(
                                            color: Color(0xFF61498C),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                ])
                              ],
                            ),
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
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

class MyRoomDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ScrollOnExpand(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Room details",
                                        style: TextStyle(
                                          color: Color(0xFF484848).withOpacity(0.6),
                                          fontSize: 15.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Quadruple Room with Balcony",
                                        style: TextStyle(
                                          color: Color(0xFF484848),
                                          fontSize: 15.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Expand Widget
                          expanded: Padding(
                            padding: const EdgeInsets.fromLTRB(6.0, 0, 6, 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(children: <Widget>[
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Guest name",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "Kalinga Jayakodi",
                                          style: TextStyle(
                                            color: Color(0xFF484848),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Price per night",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "US\$ 110",
                                          style: TextStyle(
                                            color: Color(0xFF484848),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Meal plan",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "Full board",
                                          style: TextStyle(
                                            color: Color(0xFF484848),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Cancellation policy",
                                          style: TextStyle(
                                            color:
                                            Color(0xFF484848).withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "The guest can cancel free of charge until 7 days before arrival",
                                          style: TextStyle(
                                            color: Color(0xFF484848),
                                            fontSize: 15.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "The guest will be charged the cost of the first night"
                                        "if they cancel in the 7 days before arrival",
                                    style: TextStyle(
                                      color: Color(0xFF484848),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                ])
                              ],
                            ),
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
