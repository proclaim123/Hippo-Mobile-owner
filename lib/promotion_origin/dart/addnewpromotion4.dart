import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


import 'addnewpromotion5.dart';

class AddNewPromotion04 extends StatefulWidget {
  @override
  _AddNewPromotion04State createState() => _AddNewPromotion04State();
}

class _AddNewPromotion04State extends State<AddNewPromotion04> {
  var standardRate;

  var doubleRoom;
  var twinRoom;
  var deluxRoom;

  var monday;
  var tuesday;
  var wednesday;
  var thursday;
  var friday;
  var saturday;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "How long do guests need to stay to get this promotion?",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 15.0,
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Match your chosen rate',
                                    style: TextStyle(
                                      color: Color(0xFF484848),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage(
                                        "assets/ChevronDown.png"),
                                    fit: BoxFit.fill,
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
                              color: Color(0xFF484848),
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
                Divider(
                  height: 8.0,
                  color: Color(0xFFDEDEDE),
                  thickness: 6.0,
                ),
                //
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "What is the minimum offering price(you want to give?)",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 15.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          OutlineButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 0.0),
                            borderSide: BorderSide(
                              color: Color(0xFF707070), //Color of the border
                              style: BorderStyle.solid, //Style of the border
                              width: 1, //width of the border
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            child: Text(
                              '10',
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 6.0),
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Match your chosen rate',
                                    style: TextStyle(
                                      color: Color(0xFF484848),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage(
                                        "assets/ChevronDown.png"),
                                    fit: BoxFit.fill,
                                    height: 8.5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //
                Divider(
                  height: 8.0,
                  color: Color(0xFFDEDEDE),
                  thickness: 6.0,
                ),
                //
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "To which rate(s) does this apply?",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 15.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "The discount will be deducted from the rate(s) you select here.",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Standard rate",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: standardRate != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                standardRate = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Divider(
                  height: 8.0,
                  color: Color(0xFFDEDEDE),
                  thickness: 6.0,
                ),
                //
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "To which room(s) does this apply?",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 15.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "The discount will be applied to the room(s) you select."
                            "Make sure you select at least one rate in the section above so the"
                            "choice of rooms will show.",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Standard Double Room",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: doubleRoom != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                doubleRoom = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Standard Twin Double Room",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: twinRoom != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                twinRoom = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Deluxe Room",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: deluxRoom != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                deluxRoom = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Divider(
                  height: 8.0,
                  color: Color(0xFFDEDEDE),
                  thickness: 6.0,
                ),
                //
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "When can guests stay using the discounted rate?",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 15.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "The discount will be applied to the room(s) you select."
                            "Make sure you select at least one rate in the section above so the"
                            "choice of rooms will show.",
                        style: TextStyle(
                          color: Color(0xFF484848),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Monday",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: monday != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                monday = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Tuesday",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: tuesday != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                tuesday = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Wednesday",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: wednesday != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                wednesday = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Thursday",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: thursday != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                thursday = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Friday",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: friday != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                friday = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          child: CheckboxListTile(
                            dense: true,
                            checkColor: Colors.white,
                            activeColor: Color(0xFF61498C),
                            title: const Text(
                              "Saturday",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: saturday != true,
                            onChanged: (bool value) {
                              print(value);
                              setState(() {
                                saturday = value == false ? true : false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: mediaQuery.height * 0.08)
              ],
            ),
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
                        pushNewScreen(
                          context,
                          screen: AddNewPromotion05(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
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
}
