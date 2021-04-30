import 'package:flutter/material.dart';
import 'package:ownertesting/Bids/request_bid.dart';


class BidRequest extends StatefulWidget {
  @override
  _BidRequestState createState() => _BidRequestState();
}

class _BidRequestState extends State<BidRequest> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "Bid request",
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
                onPressed: () => Navigator.pop(context, false)),
            bottom: new TabBar(
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
                  "Requested Bids",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                new Text(
                  "Sent Bids",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              RequestedBids(),
              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
