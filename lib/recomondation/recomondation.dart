import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Recommendations extends StatefulWidget {
  @override
  _RecommendationsState createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  List<String> titleArray = [
    "Welcome new-year booking with an \nEarly 2021 deals!",
    "Welcome new-year booking with an \nEarly 2021 deals!",
  ];
  List<String> descArray = [
    "Booking on our site peak in Jan-optimize \nfor this extra interest by offering\n 20% off.",
    "Booking on our site peak in Jan-optimize \nfor this extra interest by offering\n 20% off.",
  ];
  List<String> imgArray = [
    "recommBg.png",
    "recommBg.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: mainBody(),
    );
  }

  Widget mainBody() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Recommendations",
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
        body: Align(
          child: Container(
            child: _myListView(),
          ),
        ),
      ),
    );
  }

  //Recommend ListView
  Widget _myListView() {
    return this.titleArray.isNotEmpty
        ? AnimationLimiter(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: titleArray.length,
          itemBuilder: (context, index) {
            var nameArr = titleArray[index];

            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: new Container(
                // height: MediaQuery.of(context).size.height * 0.22,
                // width: MediaQuery.of(context).size.width * 0.95,
                child: SlideAnimation(
                  verticalOffset: 200,
                  child: FadeInAnimation(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      margin: EdgeInsets.only(
                          right: 10, left: 10, bottom: 0, top: 10),
                      child: Stack(children: <Widget>[
                        new Container(
                          // width: MediaQuery.of(context).size.width * 0.95,
                          // height:
                          //     MediaQuery.of(context).size.height * 0.22,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: Image(
                              image: AssetImage(
                                  "assets/${imgArray[index]}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.008,
                          right:
                          -MediaQuery.of(context).size.height * 0.04,
                          //alignment: Alignment.centerRight,
                          child: Container(
                            //color: Colors.red,
                            alignment: Alignment.centerRight,
                            height:
                            MediaQuery.of(context).size.height * 0.03,
                            child: RaisedButton(
                              child: Image(
                                image:
                                AssetImage("assets/cross.png"),
                                fit: BoxFit.fill,
                              ),
                              color: Colors.transparent,
                              elevation: 0.0,
                              //splashColor: Colors.blueGrey,
                              onPressed: () {
                                // Perform some action
                                setState(() {
                                  titleArray.removeAt(index);
                                  descArray.removeAt(index);
                                  imgArray.removeAt(index);
                                });
                                // nameArray.remove(index);
                                print("ButtonClicked");
                              },
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 30, 10),
                            child: Column(children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Recommend",
                                  style: TextStyle(
                                    color: Color(0xFFFFBB00),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  nameArr,
                                  style: TextStyle(
                                    color: Color(0xFF4E4747),
                                    fontSize: 17.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  descArray[index],
                                  style: TextStyle(
                                    color: Color(0xFF505050),
                                    fontSize: 13.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              // SizedBox(height: 5),
                            ])),
                      ]),
                    ),
                  ),
                ),
              ),
            );
          }),
    )
        : Container(
      margin: EdgeInsets.only(top: 30),
      child: Align(
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
      //color: Colors.red,
    );
  }
}
