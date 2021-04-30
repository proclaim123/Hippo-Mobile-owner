// import 'package:http/http.dart' as http;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/SignUpPage/signup.dart';

import './Style.dart';
// import '../register_and_login/main_login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  //bool _visible = false;

//To Hide An Widget
  // void _toggle() {
  //   setState(() {
  //     _currentPage = _currentPage;
  //     print(this._visible);
  //   });
  // }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 16.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF61498C) : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 00.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Stack(
                children: <Widget>[
                  //color: Colors.white,
                  Container(
                    height: MediaQuery.of(context).size.height * 0.873,
                    child: PageView(
                      physics: _currentPage != _numPages - 1
                          ? ClampingScrollPhysics()
                          : NeverScrollableScrollPhysics(),
                      reverse: false,
                      pageSnapping: true,
                      dragStartBehavior: DragStartBehavior.start,
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        new Container(
                          child: Padding(
                            padding: EdgeInsets.all(00.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1.09,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/bgP1.png',
                                      ),
                                      fit: BoxFit.fill,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.60,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height:
                                    MediaQuery.of(context).size.height *
                                        0.02),
                                Text(
                                  'Easy to Manage\nReservations',
                                  style: kTitleStyle,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 2.0),
                                Text(
                                  'Lorem ipsum dolor sit amet, \nconsectetur adipis',
                                  style: kSubtitleStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(00.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: AspectRatio(
                                  aspectRatio: 1 / 1.05,
                                  child: Image(
                                      image: AssetImage(
                                        'assets/bgP2.png',
                                      ),
                                      fit: BoxFit.fill,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.65),
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.05),
                              Text(
                                'Fast Replies Are\nAttrative',
                                style: kTitleStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                'Lorem ipsum dolor sit amet, \nconsectetur adipis',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: AspectRatio(
                                  aspectRatio: 1 / 1.06,
                                  child: Image(
                                      image: AssetImage(
                                        'assets/bgP3.png',
                                      ),
                                      fit: BoxFit.fill,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.6),
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              Text(
                                'We\'ll Manage Your\n Socail Media',
                                style: kTitleStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                'Lorem ipsum dolor sit amet, \nconsectetur adipis',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: AspectRatio(
                                  aspectRatio: 1 / 1.06,
                                  child: Image(
                                      image: AssetImage(
                                        'assets/bgP4.png',
                                      ),
                                      fit: BoxFit.fill,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.6),
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              Text(
                                'Let\'s Manage Your\nProperty',
                                style: kTitleStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                'Lorem ipsum dolor sit amet, \nconsectetur adipis',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    child: new Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.05),
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: () {
                          _pageController.animateToPage(3,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                          print("Done");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 00.0),
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: _currentPage == _numPages - 1 ? false : true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1
                  ? Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Visibility(
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: _currentPage == 0 ? false : true,
                      child: new Container(
                        height:
                        MediaQuery.of(context).size.height * 0.07,
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height *
                                0.02),
                        child: Align(
                          //alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.previousPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Image(
                              image: AssetImage("assets/leftArrw.png"),
                              fit: BoxFit.fill,
                              height: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height *
                              0.02),
                      child: Align(
                        //alignment: FractionalOffset.bottomLeft,
                        child: FlatButton(
                          onPressed: () {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                          child: Image(
                            image: AssetImage("assets/rightArrw.png"),
                            fit: BoxFit.fill,
                            height: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  : Text(''),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        color: Colors.white,
        child: GestureDetector(
          onTap: () => print('Get started'),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 17,
                child: RaisedButton(
                    color: Color(0xFF61498C),
                    onPressed: () {
                      print("Get start");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      'GET START',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              ),
            ),
          ),
        ),
      )
          : Text(''),
    );
  }
}
