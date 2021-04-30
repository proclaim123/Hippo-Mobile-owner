import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ownertesting/reservation/reservationDetails.dart';

import 'package:table_calendar/table_calendar.dart';

// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Reservations(),
//   ));
// }


class Reservations extends StatefulWidget {
  @override
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations>
    with TickerProviderStateMixin {
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
  var slide;

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
    // _calendarController.dispose();
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

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(

        // statusBarColor is used to set Status bar color in Android devices.
          statusBarColor: Colors.white,

          // To make Status bar icons color white in Android devices.
          statusBarIconBrightness: Brightness.dark,

          // statusBarBrightness is used to set Status bar icon color in iOS.
          statusBarBrightness: Brightness.dark
        // Here light means dark color Status bar icons.

      ),
    );


    return SafeArea(
        child: new Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFF8F8F8),
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Text(
              "Reservations",
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
                // textColor: Color(0xFF61498C),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   CupertinoPageRoute(
                  //       fullscreenDialog: false,
                  //       builder: (context) => DoubleRoom()),
                  // );
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
                      child: Card(
                        child: TableCalendar(
                          // calendarController: _calendarController,
                          // events: _events,
                          // holidays: _holidays,
                          // initialCalendarFormat: CalendarFormat.week,
                          // formatAnimation: FormatAnimation.slide,
                          startingDayOfWeek: StartingDayOfWeek.sunday,
                          availableGestures: AvailableGestures.all,
                          availableCalendarFormats: const {
                            CalendarFormat.month: '',
                            CalendarFormat.week: '',
                          },
                        ),
                      )),
                  Container(
                    child: Card(
                      child: Column(children: <Widget>[
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                          "assets/dotSelected.png"),
                                      fit: BoxFit.fill,
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Arrivals",
                                      style: TextStyle(
                                        color: Color(0xFFA1A1A1),
                                        fontSize: 15.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    color: Color(0xFF787878),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                          "assets/dotUnselect.png"),
                                      fit: BoxFit.fill,
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Departures",
                                      style: TextStyle(
                                        color: Color(0xFFA1A1A1),
                                        fontSize: 15.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    color: Color(0xFF787878),
                                    fontSize: 15.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                          "assets/dotUnselect.png"),
                                      fit: BoxFit.fill,
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Stay-overs",
                                      style: TextStyle(
                                        color: Color(0xFFA1A1A1),
                                        fontSize: 15.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    color: Color(0xFF787878),
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
                        SizedBox(height: 8.0),
                        Divider(
                          height: 3.0,
                          color: Colors.black54,
                        ),
                        ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) =>
                                        ReservationDetails()),
                              );
                            },
                            leading: Image(
                              image: AssetImage("assets/logout.png"),
                              fit: BoxFit.fill,
                              height:
                              MediaQuery.of(context).size.height * 0.04,
                            ),
                            title: Text(
                              "Kalinga Jayakodi",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 16.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "1 nights - 2 guests - 1 room ",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 13.5,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: Icon(
                              Icons.mail_outline,
                              color: Color(0xFF484848),
                              size: MediaQuery.of(context).size.height *
                                  0.037,
                            )),
                        Divider(
                          height: 2.0,
                        ),
                        ListTile(
                            leading: Image(
                              image: AssetImage("assets/logout.png"),
                              fit: BoxFit.fill,
                              height:
                              MediaQuery.of(context).size.height * 0.04,
                            ),
                            title: Text(
                              "Kalinga Jayakodi",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 16.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            subtitle: Text(
                              "1 nights - 2 guests - 1 room ",
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 13.5,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            trailing: Icon(
                              Icons.mail_outline,
                              color: Color(0xFF484848),
                              size: MediaQuery.of(context).size.height *
                                  0.037,
                            )),
                      ]),
                    ),
                  ),
                ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

class FormatAnimation {
}

class CalendarController {
}
