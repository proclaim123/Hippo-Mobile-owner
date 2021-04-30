import 'package:flutter/material.dart';
import 'package:ownertesting/promotion_origin/dart/promotiontab.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


import 'main.dart';

class AddNewPromotion05 extends StatefulWidget {
  @override
  _AddNewPromotion05State createState() => _AddNewPromotion05State();
}

class _AddNewPromotion05State extends State<AddNewPromotion05> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "Add New Promotion",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              splashColor: Colors.grey,
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Container(
          color: Color(0xFFF5F5F5),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "What's the name of your promotion?",
                      style: TextStyle(
                        color: Color(0xFF484848),
                        fontSize: 15.0,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "This name is just for your reference. It won't be displayed to"
                          "customers browsing Hotelshippo.com.",
                      style: TextStyle(
                        color: Color(0xFF484848),
                        fontSize: 13.0,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: OutlineButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 0.0),
                            borderSide: BorderSide(
                              color: Color(0xFF707070), //Color of the border
                              style: BorderStyle.solid, //Style of the border
                              width: 1, //width of the border
                            ),
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  '10% October Deal',
                                  style: TextStyle(
                                    color: Color(0xFF484848),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 12.0,
                                  height: 8.5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 6.0),
                        Text(
                          'night(s) or more',
                          style: TextStyle(
                            color: Colors.transparent,
                            fontSize: 15.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.95,
                margin: EdgeInsets.only(top: 13.0),
                child: OutlineButton(
                  padding:
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                  borderSide: BorderSide(
                    color: Color(0xFF707070), //Color of the border
                    style: BorderStyle.solid, //Style of the border
                    width: 1, //width of the border
                  ),
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Show Advanced Settings',
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 15.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Image(
                        image: AssetImage("assets/ChevronDown.png"),
                        fit: BoxFit.fill,
                        height: 8.5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.0),
                topLeft: Radius.circular(12.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 2.0,
              ),
            ],
          ),
          height: MediaQuery.of(context).size.height * 0.13,
          width: double.infinity,
          child: GestureDetector(
            onTap: () => print('done'),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: RaisedButton(
                      color: Color(0xFF61498C),
                      onPressed: () {
                        setState(() {
                          pushNewScreen(
                            context,
                            screen: Promotions(),
                            withNavBar:
                            true, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                          );
                        });
                      },
                      child: Text(
                        'DONE',
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
}
