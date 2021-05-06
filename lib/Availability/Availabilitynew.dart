import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/MessagesOrigin/dart/message.dart';
import 'package:ownertesting/Moreorigin/More.dart';
import 'package:ownertesting/reservation/reservationList.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Avilability.dart';
import 'doubleroom.dart';



class Availability extends StatefulWidget {
  @override
  _AvailabilityState createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability>
    with TickerProviderStateMixin {
  //add and substraction
  int _n = 5;
  int _n2 = 3;
  int _n3 = 2;
  int _n4 = 5;
  int _n5 = 3;
  int _n6 = 2;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void add2() {
    setState(() {
      _n2++;
    });
  }

  void minus2() {
    setState(() {
      if (_n2 != 0) _n2--;
    });
  }

  void add3() {
    setState(() {
      _n3++;
    });
  }

  void minus3() {
    setState(() {
      if (_n3 != 0) _n3--;
    });
  }

  void add4() {
    setState(() {
      _n4++;
    });
  }

  void minus4() {
    setState(() {
      if (_n4 != 0) _n4--;
    });
  }

  void add5() {
    setState(() {
      _n5++;
    });
  }

  void minus5() {
    setState(() {
      if (_n5 != 0) _n5--;
    });
  }

  void add6() {
    setState(() {
      _n6++;
    });
  }

  void minus6() {
    setState(() {
      if (_n6 != 0) _n6--;
    });
  }


  bool _switchValue = true;
  int counter =0;
  String dropdownstr="Info";
  int _selectedpage =4;
  final _pageOptions =[
    Text('Items 1',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 2',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 3',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 4',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 5',style: TextStyle(fontSize: 26.0 ),),


  ];


// Example holidays
  final Map<DateTime, List> _holidays = {
    DateTime(2019, 1, 1): ['New Year\'s Day'],
    DateTime(2019, 1, 6): ['Epiphany'],
    DateTime(2019, 2, 14): ['Valentine\'s Day'],
    DateTime(2019, 4, 21): ['Easter Sunday'],
    DateTime(2019, 4, 22): ['Easter Monday'],
  };

  Map<DateTime, List> _events;
  AnimationController _animationController;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    _events = {
      _selectedDay.subtract(Duration(days: 30)): [
        'Event A0',
        'Event B0',
        'Event C0'
      ],
      _selectedDay.subtract(Duration(days: 27)): ['Event A1'],
      _selectedDay.subtract(Duration(days: 20)): [
        'Event A2',
        'Event B2',
        'Event C2',
        'Event D2'
      ],
      _selectedDay.subtract(Duration(days: 16)): ['Event A3', 'Event B3'],
      _selectedDay.subtract(Duration(days: 10)): [
        'Event A4',
        'Event B4',
        'Event C4'
      ],
      _selectedDay.subtract(Duration(days: 4)): [
        'Event A5',
        'Event B5',
        'Event C5'
      ],
      _selectedDay.subtract(Duration(days: 2)): ['Event A6', 'Event B6'],
      _selectedDay: ['Event A7', 'Event B7', 'Event C7', 'Event D7'],
      _selectedDay.add(Duration(days: 1)): [
        'Event A8',
        'Event B8',
        'Event C8',
        'Event D8'
      ],
      _selectedDay.add(Duration(days: 3)):
      Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
      _selectedDay.add(Duration(days: 7)): [
        'Event A10',
        'Event B10',
        'Event C10'
      ],
      _selectedDay.add(Duration(days: 11)): ['Event A11', 'Event B11'],
      _selectedDay.add(Duration(days: 17)): [
        'Event A12',
        'Event B12',
        'Event C12',
        'Event D12'
      ],
      _selectedDay.add(Duration(days: 22)): ['Event A13', 'Event B13'],
      _selectedDay.add(Duration(days: 26)): [
        'Event A14',
        'Event B14',
        'Event C14'
      ],
    };

    _calendarController = CalendarController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  // void _onDaySelected(DateTime day, List events) {
  //   print('CALLBACK: _onDaySelected');
  //   setState(() {
  //   });
  // }

  // void _onVisibleDaysChanged(
  //     DateTime first, DateTime last, CalendarFormat format) {
  //   print('CALLBACK: _onVisibleDaysChanged');
  // }

  bool status = true;
  bool status3 = false;
  CalendarController _controller;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: new Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFF8F8F8),
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Text(
              "Availability",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        fullscreenDialog: false,
                        builder: (context) => Mor()),
                    //DoubleRoom
                  );
                },
                child: Icon(Icons.menu),
                shape:
                CircleBorder(side: BorderSide(color: Colors.transparent)),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Align(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.965,
                child: Column(children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: new BoxDecoration(
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(10.0)),
                        color: Color(0xFF8E8E93).withOpacity(0.24)),
                    child: TextField(
                      maxLines: 1,
                      autofocus: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Search by reservation number",
                          prefixIcon: Icon(Icons.search),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                  ),
                  Divider(),
                  Container(
                    //   child: Card(
                    //     child: TableCalendar(
                    //
                    //       locale: 'pl_PL',
                    //       //calendarController: _calendarController,
                    //       calendarController: _calendarController,
                    //       events: _events,
                    //       holidays: _holidays,
                    //       initialCalendarFormat: CalendarFormat.week,
                    //       formatAnimation: FormatAnimation.slide,
                    //       startingDayOfWeek: StartingDayOfWeek.sunday,
                    //       availableGestures: AvailableGestures.all,
                    //       availableCalendarFormats: const {
                    //         CalendarFormat.month: '',
                    //         CalendarFormat.week: '',
                    //       },
                    //     ),
                    //
                    //   ),
                  ),

                  Container(
                      child: Card(
                        child: Column(children: <Widget>[
                          ListTile(

                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Double Room",
                                      style: TextStyle(
                                        color: Color(0xFF484848),
                                        fontSize: 17.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                    Text(
                                      "Open",
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF61498C),
                                      ),
                                    ),
                                  ],
                                ),
                                FlutterSwitch(
                                  activeColor: Color(0xFF61498C),
                                  inactiveColor: Color(0xFFD8D8D8),
                                  value: status,
                                  onToggle: (val) {
                                    setState(() {
                                      if (val) {
                                        status = !val;
                                        print("VALUE : $val");
                                      } else {
                                        status = DoubleRoom() as bool;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),

                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Rooms",
                                  style: TextStyle(
                                    color: Color(0xFF484848),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                Container(
                                  alignment: Alignment.centerRight,
                                  // width: MediaQuery.of(context).size.width * 0.36,

                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          minus();
                                        },
                                        child: Container(
                                          child: Image(
                                            image: AssetImage(
                                                "assets/plus.png"),
                                            fit: BoxFit.fill,
                                            height:
                                            MediaQuery.of(context).size.height * 0.04,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.1,
                                        alignment: Alignment.center,
                                        child: new Text(
                                          '$_n',
                                          style: TextStyle(
                                            color: Color(0xFF3B3B3B),
                                            fontSize: 18.0,
                                            fontFamily: 'SF Pro Text',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      InkWell(
                                        onTap: () {
                                          add();
                                        },
                                        child: Container(
                                          child: Image(
                                            image: AssetImage(
                                                "assets/minus.png"),
                                            fit: BoxFit.fill,
                                            height:
                                            MediaQuery.of(context).size.height * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),

                          Divider(
                            height: 2.0,
                          ),
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Available Rooms",
                                  style: TextStyle(
                                    color: Color(0xFF484848),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                Container(
                                  alignment: Alignment.centerRight,
                                  // width: MediaQuery.of(context).size.width * 0.36,

                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          minus();
                                        },
                                        child: Container(
                                          child: Image(
                                            image: AssetImage(
                                                "assets/plus.png"),
                                            fit: BoxFit.fill,
                                            height:
                                            MediaQuery.of(context).size.height * 0.04,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.1,
                                        alignment: Alignment.center,
                                        child: new Text(
                                          '$_n2',
                                          style: TextStyle(
                                            color: Color(0xFF3B3B3B),
                                            fontSize: 18.0,
                                            fontFamily: 'SF Pro Text',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      InkWell(
                                        onTap: () {
                                          add();
                                        },
                                        child: Container(
                                          child: Image(
                                            image: AssetImage(
                                                "assets/minus.png"),
                                            fit: BoxFit.fill,
                                            height:
                                            MediaQuery.of(context).size.height * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),
                          ListTile(
                            title: Text(
                              "Available Rooms",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 15.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: new Text(
                              '3',
                              style: TextStyle(
                                color: Color(0xFF3B3B3B),
                                fontSize: 18.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            padding: EdgeInsets.only(left: 16.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Rate & Restrictions",
                              style: TextStyle(
                                color: Color(0xFF61498C),
                                fontSize: 13.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                        ),
                      )

                  ),

                  Container(
                      child: Card(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(

                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Quadruple Room",
                                            style: TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 17.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "Fully booked",
                                            style: TextStyle(
                                              color: Color(0xFF736F9D),
                                              fontSize: 13.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),


                                        ],
                                      ),

                                      FlutterSwitch(

                                        activeColor: Color(0xFF61498C),
                                        inactiveColor: Color(0xFFD8D8D8),
                                        value: status,
                                        onToggle: (val) {
                                          setState(() {
                                            if (val) {
                                              status = !val;
                                              print("VALUE : $val");
                                            } else {
                                              status = val;
                                            }
                                          });
                                        },
                                      ),

                                    ],
                                  ),


                                ),
                                Divider(
                                  height: 2.0,
                                ),

                                ListTile(
                                  title: Text(
                                    "Total Rooms",
                                    style: TextStyle(
                                      color: Color(0xFF484848),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  trailing: Container(
                                    alignment: Alignment.centerRight,
                                    width: MediaQuery.of(context).size.width * 0.36,
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            minus3();
                                          },
                                          child: Container(
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/plus.png"),
                                              fit: BoxFit.fill,
                                              height:
                                              MediaQuery.of(context).size.height * 0.04,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.1,
                                          alignment: Alignment.center,
                                          child: new Text(
                                            '$_n3',
                                            style: TextStyle(
                                              color: Color(0xFF3B3B3B),
                                              fontSize: 18.0,
                                              fontFamily: 'SF Pro Text',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        InkWell(
                                          onTap: () {
                                            add3();
                                          },
                                          child: Container(
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/minus.png"),
                                              fit: BoxFit.fill,
                                              height:
                                              MediaQuery.of(context).size.height * 0.04,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                ),
                                ListTile(
                                  title: Text(
                                    "Available Rooms",
                                    style: TextStyle(
                                      color: Color(0xFF484848),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  trailing: Container(
                                    alignment: Alignment.centerRight,
                                    width: MediaQuery.of(context).size.width * 0.36,
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            minus4();
                                          },
                                          child: Container(
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/plus.png"),
                                              fit: BoxFit.fill,
                                              height:
                                              MediaQuery.of(context).size.height * 0.04,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.1,
                                          alignment: Alignment.center,
                                          child: new Text(
                                            '$_n4',
                                            style: TextStyle(
                                              color: Color(0xFF3B3B3B),
                                              fontSize: 18.0,
                                              fontFamily: 'SF Pro Text',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        InkWell(
                                          onTap: () {
                                            add4();
                                          },
                                          child: Container(
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/minus.png"),
                                              fit: BoxFit.fill,
                                              height:
                                              MediaQuery.of(context).size.height * 0.04,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                ),
                                ListTile(
                                  title: Text(
                                    "Available Rooms",
                                    style: TextStyle(
                                      color: Color(0xFF484848),
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  trailing: new Text(
                                    '3',
                                    style: TextStyle(
                                      color: Color(0xFF3B3B3B),
                                      fontSize: 18.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.06,
                                  padding: EdgeInsets.only(left: 16.0),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Rate & Restrictions",
                                    style: TextStyle(
                                      color: Color(0xFF61498C),
                                      fontSize: 13.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ]
                          )
                      )
                  ),

                  Container(
                      child: Card(
                          child: Column(children: <Widget>[
                            ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        "Twin Double Room",
                                        style: TextStyle(
                                          color: Color(0xFF484848),
                                          fontSize: 17.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Closed",
                                        style: TextStyle(
                                          color: Color(0xFFE25757),
                                          fontSize: 13.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),

                                  FlutterSwitch(
                                    activeColor: Color(0xFF61498C),
                                    inactiveColor: Color(0xFFD8D8D8),
                                    value: status,
                                    onToggle: (val) {
                                      setState(() {
                                        if (val) {
                                          status = !val;
                                          print("VALUE : $val");
                                        }
                                        else {status = val;}

                                      });
                                    },
                                  ),



                                ],
                              ),


                            ),
                            Divider(
                              height: 2.0,
                            ),
                            ListTile(
                              title: Text(
                                "Total Rooms",
                                style: TextStyle(
                                  color: Color(0xFF484848),
                                  fontSize: 15.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: Container(
                                alignment: Alignment.centerRight,
                                width: MediaQuery.of(context).size.width * 0.36,
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        minus5();
                                      },
                                      child: Container(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/plus.png"),
                                          fit: BoxFit.fill,
                                          height:
                                          MediaQuery.of(context).size.height * 0.04,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      alignment: Alignment.center,
                                      child: new Text(
                                        '$_n5',
                                        style: TextStyle(
                                          color: Color(0xFF3B3B3B),
                                          fontSize: 18.0,
                                          fontFamily: 'SF Pro Text',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    InkWell(
                                      onTap: () {
                                        add5();
                                      },
                                      child: Container(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/minus.png"),
                                          fit: BoxFit.fill,
                                          height:
                                          MediaQuery.of(context).size.height * 0.04,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Divider(
                              height: 2.0,
                            ),
                            ListTile(
                              title: Text(
                                "Total Rooms",
                                style: TextStyle(
                                  color: Color(0xFF484848),
                                  fontSize: 15.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: Container(
                                alignment: Alignment.centerRight,
                                width: MediaQuery.of(context).size.width * 0.36,
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        minus6();
                                      },
                                      child: Container(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/plus.png"),
                                          fit: BoxFit.fill,
                                          height:
                                          MediaQuery.of(context).size.height * 0.04,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      alignment: Alignment.center,
                                      child: new Text(
                                        '$_n6',
                                        style: TextStyle(
                                          color: Color(0xFF3B3B3B),
                                          fontSize: 18.0,
                                          fontFamily: 'SF Pro Text',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    InkWell(
                                      onTap: () {
                                        add6();
                                      },
                                      child: Container(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/minus.png"),
                                          fit: BoxFit.fill,
                                          height:
                                          MediaQuery.of(context).size.height * 0.04,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Divider(
                              height: 2.0,
                            ),
                            ListTile(
                              title: Text(
                                "Available Rooms",
                                style: TextStyle(
                                  color: Color(0xFF484848),
                                  fontSize: 15.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: new Text(
                                '3',
                                style: TextStyle(
                                  color: Color(0xFF3B3B3B),
                                  fontSize: 18.0,
                                  fontFamily: 'SF Pro Text',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Divider(
                              height: 2.0,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              padding: EdgeInsets.only(left: 16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Rate & Restrictions",
                                style: TextStyle(
                                  color: Color(0xFF61498C),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ]))),
                ]
                ),


              ),
            ),

          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: _selectedpage,
            onTap: (int index) {
              setState(() {
                _selectedpage =index;

                print(index);

              });
            },
            items: [
              BottomNavigationBarItem(
                // icon: Icon(Icons.home,color: Colors.blueAccent,),
                // title: Text ('home',style: TextStyle(color: Colors.black),)
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Home();
                    }),);
                  },
                  child: ImageIcon(

                    AssetImage("assets/homeS.png",
                    ),color: Colors.grey,


                  ),
                ),
                title: Text('Home',style: TextStyle(color:Colors.black),),


              ), BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return  ReservationList();
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/reservationS.png",
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('Reservation',style: TextStyle(color:Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Availability_Owner();
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/availabilityS.png",
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('Availability',style: TextStyle(color:Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return MessageList() ;
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/msgS.png"
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('Messages',style: TextStyle(color:Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Mor();
                    }),);
                  },
                  child: ImageIcon(
                    AssetImage("assets/moreS.png",
                    ),color: Colors.grey,

                  ),
                ),
                title: Text('More',style: TextStyle(color:Colors.black),),

              ),
            ],
          ),
        )
    );





  }
}

// class CalendarController {
//   void dispose() {}
// }
