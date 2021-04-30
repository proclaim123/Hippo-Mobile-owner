import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


import 'addNewPromotion01.dart';
import 'addnewpromotion1.dart';


class Active extends StatelessWidget {
  final List<String> nameArray = [
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
    "10% October Deal",
  ];

  final List<String> descArray = [
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
    "he lead-up to NYE is a busy travel time when customers want to celebrate but are particularly"
        "price-sensitive.",
  ];
  final List<String> imgArray = [

  ];

  final List<String> timeArray = [
    "09:12 PM",
    "07:30 AM",
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0.0)),
      ),
      home: Scaffold(
        body: _myListView(context),
        bottomSheet: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.1,
          width: double.infinity,
          child: GestureDetector(
            onTap: () => print('add new promotion'),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: RaisedButton(
                      color: Color(0xFF61498C),
                      onPressed: () {
                        print("Get start");
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              fullscreenDialog: false,
                              builder: (context) => AddNewPromotion01()),
                        );
                      },
                      child: Text(
                        'Add New Promotion',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0))),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

//Recommend ListView
  Widget _myListView(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    print(nameArray.length);
    print(descArray.length);
    return nameArray.isNotEmpty
        ? AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.only(
            bottom: mediaQuery.height * 0.11,
          ),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: nameArray.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 200,
                child: FadeInAnimation(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    margin: EdgeInsets.only(
                        right: mediaQuery.width * 0.03,
                        left: mediaQuery.width * 0.03,
                        bottom: 0.0,
                        top: 8.0),
                    child: Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 12.0, 8.0, 12.0),
                      child: Container(
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                /*  child: Image(
                                    image: AssetImage(
                                        "assets/msg/${imgArray[index]}"),
                                    fit: BoxFit.fill,
                                    //height: MediaQuery.of(context).size.height * 0.04,
                                  ), */
                              ),
                              SizedBox(width: 10),
                              Text(
                                '${nameArray[index]}',
                                style: TextStyle(
                                  color: Color(0xFF484848),
                                  fontSize: 18.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 2),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            '${descArray[index]}',
                            style: TextStyle(
                              color: Color(0xFF484848),
                              fontSize: 15.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 15),
                          Divider(
                            height: 3.0,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Book Dates',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'From July 23, 2019 to Oct 31, 2019',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Stay Dates',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'From Sep 1, 2019 to Oct 31, 2019',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Discount',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'minimum 25%',
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Divider(color: Colors.grey, height: 3.0),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton(
                                splashColor: Colors.grey,
                                padding: EdgeInsets.only(
                                    left: mediaQuery.width * 0.08,
                                    right: mediaQuery.width * 0.08,
                                    top: 10,
                                    bottom: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                color: Color(0xFF4C3C73),
                                onPressed: () {},
                                child: Text(
                                  'EDIT PROMOTION',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              OutlineButton(
                                borderSide: BorderSide(
                                  color:
                                  Color(0xFF4C3C73), //Color of the border
                                  style:
                                  BorderStyle.solid, //Style of the border
                                  width: 1.5, //width of the border
                                ),
                                splashColor: Colors.grey,
                                padding: EdgeInsets.only(
                                    left: mediaQuery.width * 0.06,
                                    right: mediaQuery.width * 0.06,
                                    top: 10,
                                    bottom: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                color: Colors.white,
                                onPressed: () {},
                                child: Text(
                                  'DEACTIVATE',
                                  style: TextStyle(
                                    color: Color(0xFF4C3C73),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ))
        : Container(
        child: Center(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                  AspectRatio(
                      aspectRatio: 1 / 0.32,
                      child:
                      Image(image: AssetImage("assets/panel.png"))),
                  SizedBox(height: 15),
                  Text(
                    'Nothing Here',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/btnBack.png'),
                          fit: BoxFit.fill),
                      // borderRadius: BorderRadius.all(r),
                    ),
                    child: RaisedButton(
                        color: Colors.transparent,
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => FindAStay()),
                          // );
                        },
                        child: Text(
                          'Request Your First Bid',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0))),
                  ),
                ]),
          ),
        )
      //color: Colors.red,
    );
  }
}
