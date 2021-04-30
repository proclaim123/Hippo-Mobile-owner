import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'addnewpromotion3.dart';
import 'addnewpromotions3.dart';



class AddNewPromotion02 extends StatefulWidget {
  @override
  _AddNewPromotion02State createState() => _AddNewPromotion02State();
}

class _AddNewPromotion02State extends State<AddNewPromotion02> {
  final List<String> nameArray = [
    "Basic deal",
    "Last minute",
    "Early booker",
    "Offering"
  ];

  final List<String> descArray = [
    "A basic promotion for a reservation",
    "A special promotion for last minute reservation",
    "A special promotion for last minute reservation",
    "A special promotion for last minute customers",
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    right: 0.0,
                    left: mediaQuery.width * 0.05,
                    bottom: 0.0,
                    top: 13.0),
                child: Text(
                  "What type of promotion \nis it?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: 0.0,
                    left: mediaQuery.width * 0.05,
                    bottom: 0.0,
                    top: 8.0),
                child: Text(
                  "Select a promotion that matches your business goals",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'SF Pro Text',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(child: _myListView(context)),
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
            onTap: () => print('Get started'),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: RaisedButton(
                      color: Color(0xFF61498C),
                      onPressed: () {
                        print("Get start");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddNewPromotion03()),
                        );
                      },
                      child: Text(
                        'NEXT',
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

  Widget _myListView(BuildContext context) {
    print(nameArray.length);
    print(descArray.length);
    return nameArray.isNotEmpty
        ? AnimationLimiter(
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: nameArray.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                splashColor: Colors.grey,
                onTap: () {},
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: nameArray[index] == "Offering"
                        ? Color(0xFF9389AA)
                        : Color(0xFF848484),
                    margin: EdgeInsets.all(6.0),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            AspectRatio(
                                aspectRatio: 1 / 0.25,
                                child: Image(
                                    image: AssetImage(
                                        "assets/promotion"))),
                            SizedBox(height: 8.0),
                            Text(
                              "${nameArray[index]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '${descArray[index]}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                    )),
              );
            }))
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
                          print("Next");
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
