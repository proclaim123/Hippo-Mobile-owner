import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'dart:ui';

import 'PropertyPhotoList.dart';

// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: PropertyDetails(),
//   ));
// }




class PropertyDetails extends StatefulWidget {
  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  @override
  Widget build(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;

    double rating = 5;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black),
              title: Center(
                child: FlatButton(
                  onPressed: () {},
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
                child: Align(
                  child: Container(
                    margin: EdgeInsets.only(top: 12.0),
                    width: mediaQuery.width * 0.96,
                    alignment: Alignment.center,
                    child: Column(children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: new Container(
                          // color: Colors.red,
                          width: mediaQuery.width * 0.96,
                          height: mediaQuery.height * 0.27,
                          child: Image(
                            image: AssetImage("assets/heritance-six-mob.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //
                      SizedBox(height: 15.0),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              // align the text to the left instead of centered
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Orchid Villa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 2.0),
                                SmoothStarRating(
                                    allowHalfRating: true,
                                    // onRatingChanged: (v) {
                                    //   rating = v;
                                    //   setState(() {});
                                    // },
                                    starCount: 5,
                                    rating: rating,
                                    size: 15,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star_half,
                                    defaultIconData: Icons.star_border,
                                    color: Color(0xFFFAC917),
                                    borderColor: Color(0xFFFAC917),
                                    spacing: 0.0)
                              ],
                            ),
                            Container(
                              color: Color(0xFF4C3C73),
                              padding: EdgeInsets.all(4.5),
                              child: Column(children: <Widget>[
                                Text(
                                  "Ratings",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "9.5",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
//
                      SizedBox(height: 12.0),
                      Container(
                        width: mediaQuery.width * 0.96,
                        child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 17.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Srimath Kudarathwatta Mawatha Kandy, 20000",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Property ID",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 17.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "232789",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      //
                      SizedBox(height: 10.0),

                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Change Property Name",
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.8),
                                            fontSize: 17.0,
                                            fontFamily: 'SF Pro Text',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      new Container(
                                          child: Icon(Icons.chevron_right)),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PropertyPhotosList()));
                                },
                                splashColor: Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Photos",
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.8),
                                            fontSize: 17.0,
                                            fontFamily: 'SF Pro Text',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      new Container(
                                          child: Icon(Icons.chevron_right)),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Property descriptions",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 17.0,
                                          fontFamily: 'SF Pro Text',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    new Container(child: Icon(Icons.chevron_right)),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Facilities & Services",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 17.0,
                                          fontFamily: 'SF Pro Text',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    new Container(child: Icon(Icons.chevron_right)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ))));
  }
}
