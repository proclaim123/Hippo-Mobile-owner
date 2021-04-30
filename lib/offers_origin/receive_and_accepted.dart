import 'package:flutter/material.dart';
import 'package:ownertesting/offers_origin/received_offers.dart';

import 'accepted_offers.dart';





class ReceivedOffersTab extends StatefulWidget {
  @override
  _ReceivedOffersTabState createState() => _ReceivedOffersTabState();
}

class _ReceivedOffersTabState extends State<ReceivedOffersTab> {
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
              child: Column(
                children: <Widget>[
                  AppBar(
                      backgroundColor: Colors.white,
                      iconTheme: IconThemeData(color: Colors.black),
                      bottomOpacity: 0.0,
                      elevation: 0.0,
                      title: Text(
                        "Offers",
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
                    tabs: [
                      new Text(
                        "Received Offers",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      new Text(
                        "Accepted Offers",
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
              ReceivedOffer(),
              AcceptedOffer(),
            ],
          ),
        ),
      ),
    );
  }
}
