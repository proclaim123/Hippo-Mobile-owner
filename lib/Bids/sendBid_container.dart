import 'package:flutter/material.dart';


import 'bid_requestmain.dart';

class RequestContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Bid Request",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontFamily: 'SF Pro Text',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,

        ),
        body: Container(
          child: BidRequest(),
        ),
      ),
    );
  }
}
