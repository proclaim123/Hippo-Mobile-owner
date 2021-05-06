import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:table_calendar/table_calendar.dart';




class DoubleRoom extends StatefulWidget {
  @override
  _DoubleRoomState createState() => _DoubleRoomState();
}

class _DoubleRoomState extends State<DoubleRoom> with TickerProviderStateMixin {
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFF8F8F8),
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Text(
            "Double Room",
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
              textColor: Color(0xFF61498C),
              onPressed: () {
                print("object");
                Navigator.pop(context);
              },
              child: Text(
                "Done",
                style: TextStyle(
                  color: Color(0xFF61498C),
                  fontSize: 14.0,
                  fontFamily: 'SF Pro Text',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              shape:
              CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ]),
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
                  //         child: TableCalendar(
                  //           // locale: 'pl_PL',
                  //         //   calendarController: _calendarController,
                  //         //   events: _events,
                  //         //   holidays: _holidays,
                  //         //   initialCalendarFormat: CalendarFormat.week,
                  //         //   formatAnimation: FormatAnimation.slide,
                  //         //   startingDayOfWeek: StartingDayOfWeek.sunday,
                  //         //   availableGestures: AvailableGestures.all,
                  //         //   availableCalendarFormats: const {
                  //         //     CalendarFormat.month: '',
                  //         //     CalendarFormat.week: '',
                  //         //   },
                  //         // ),
                  //       ),

                ),
              ),
              Container(
                  child: Card(
                      child: Column(children: <Widget>[
                        ListTile(
                          title: Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
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
                      ]
                      )
                  )
              ),


              ListTile(
                title: Text(
                  "Rate & Restrictions",
                  style: TextStyle(
                    color: Color(0xFF484848),
                    fontSize: 17.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                  child: Card(
                      child: Column(children: <Widget>[
                        ListTile(
                          title: Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Standard Rate",
                                style: TextStyle(
                                  color: Color(0xFF484848),
                                  fontSize: 17.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
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
                            "Prices",
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
                        ListTile(
                          title: Text(
                            "Minimum length of stay",
                            style: TextStyle(
                              color: Color(0xFF484848),
                              fontSize: 15.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: Container(
                            height: MediaQuery.of(context).size.height*0.05,
                            color: Color(0xFFDCDCDC),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width*0.13,
                            child: new Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 18.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ]
                      )
                  )
              ),
            ]),

          ),
        ),
      ),


    );
  }
}
