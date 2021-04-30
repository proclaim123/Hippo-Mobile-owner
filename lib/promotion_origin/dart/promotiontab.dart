import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'activepromotion.dart';
import 'inactivePromotion.dart';





class Promotions extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return new SafeArea(
      child: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(mediaQuery.size.height * 0.14),
            child: new Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  AppBar(
                    backgroundColor: Colors.white,
                    brightness: Brightness.light,
                    iconTheme: IconThemeData(color: Colors.black),
                    bottomOpacity: 0.0,
                    elevation: 0.0,
                    title: Text(
                      "Guest Reviews",
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
                  new Expanded(child: new Container()),
                  new TabBar(
                    labelColor: Color(0xFF61498C),
                    indicatorColor: Color(0xFF61498C),
                    unselectedLabelColor: Colors.black.withOpacity(0.5),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3.0,
                    labelPadding: EdgeInsets.only(
                        top: 0.0,
                        bottom: MediaQuery.of(context).size.height * 0.0175,
                        left: 0.0,
                        right: 0.0),
                    // indicatorPadding: EdgeInsets.only(
                    //    right: MediaQuery.of(context).size.height * 0.0175),
                    tabs: [
                      new Text(
                        "Active",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      new Text(
                        "Inactive",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  // Border
                  Container(
                    // Negative padding
                    transform: Matrix4.translationValues(0.0, -2.6, 0.0),
                    // Add top border
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color(0xFFc3c3c3),
                          width: 0.3,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              Active(),
              Inactive(),
            ],
          ),
        ),
      ),
    );
  }
}

