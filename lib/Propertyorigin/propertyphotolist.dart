import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ownertesting/Propertyorigin/propertyphotoGallery.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'dart:ui';



class PropertyPhotosList extends StatefulWidget {
  @override
  _PropertyPhotosListState createState() => _PropertyPhotosListState();
}

class _PropertyPhotosListState extends State<PropertyPhotosList> {
  List<String> nameArray = [
    "Photo Gallery",
    "Double Room",
    "Quadruple Room",
    "Twin Double Room",
    "Photo Gallery",
    "Double Room",
    "Quadruple Room",
    "Twin Double Room",
    "Photo Gallery",
    "Double Room",
    "Quadruple Room",
    "Twin Double Room",
  ];

  List<String> descArray = [
    "39 Photos",
    "12 Photos",
    "25 Photos",
    "9 Photos",
    "39 Photos",
    "12 Photos",
    "25 Photos",
    "9 Photos",
    "39 Photos",
    "12 Photos",
    "25 Photos",
    "9 Photos",
  ];
  List<String> imgArray = [
    "room1.png",
    "room2.png",
    "room3.png",
    "room4.png",
    "room1.png",
    "room2.png",
    "room3.png",
    "room4.png",
    "room1.png",
    "room2.png",
    "room3.png",
    "room4.png",
  ];

  List<String> timeArray = [
    "Uploaded 2 days ago",
    "Uploaded 1 day ago",
    "Uploaded 2 days ago",
    "Uploaded 3 days ago",
    "Uploaded 2 days ago",
    "Uploaded 1 day ago",
    "Uploaded 2 days ago",
    "Uploaded 3 days ago",
    "Uploaded 2 days ago",
    "Uploaded 1 day ago",
    "Uploaded 2 days ago",
    "Uploaded 3 days ago",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Text(
              "Property Photos",
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
                  //       fullscreenDialog: false, builder: (context) => MyApp()),
                  // );
                },
                child: Icon(Icons.menu),
                shape:
                CircleBorder(side: BorderSide(color: Colors.transparent)),
              ),
            ],
          ),
          body: mainBody()),
    );
  }

  Widget mainBody() {
    return Column(children: <Widget>[
      Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
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
          ],
        ),
      ),
      Expanded(
        child: _myListView(context),
      )
    ]);
  }

  //Recommend ListView
  Widget _myListView(BuildContext context) {
    return nameArray.isNotEmpty
        ? AnimationLimiter(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: nameArray.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                horizontalOffset: 200,
                child: FadeInAnimation(
                  child: Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    actions: <Widget>[
                      // IconSlideAction(
                      //   caption: 'Archive',
                      //   color: Colors.blue,
                      //   icon: Icons.archive,
                      //   // onTap: () => _showSnackBar('Archive'),
                      // ),
                      // IconSlideAction(
                      //   caption: 'Read',
                      //   color: Colors.black38,
                      //   icon: Icons.message,
                      //   onTap: () {
                      //     //  setState(() {
                      //     //   this.isShow = false;
                      //     // });
                      //   },
                      // ),
                    ],
                    secondaryActions: <Widget>[
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () {
                          setState(() {
                            nameArray.removeAt(index);
                            descArray.removeAt(index);
                            timeArray.removeAt(index);
                            imgArray.removeAt(index);
                          });
                        },
                      ),
                    ],
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      margin: EdgeInsets.only(
                        // right: MediaQuery.of(context).size.width * 0.05,
                        // left: MediaQuery.of(context).size.width * 0.05,
                          bottom: 0,
                          top: 1),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7.0, bottom: 7.0),
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: PropertyPhotoGallery(),
                              withNavBar:
                              true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                            );
                          },
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Container(
                              child: FittedBox(
                                child: Image(
                                  image: AssetImage(
                                      "assets/${imgArray[index]}"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          title: Row(
                            children: <Widget>[
                              Text(
                                '${nameArray[index]}',
                                style: TextStyle(
                                  color: Color(0xFF4B4B4B),
                                  fontSize: 17.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${descArray[index]}',
                                style: TextStyle(
                                  color: Color(0xFF4B4B4B),
                                  fontSize: 13.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '${timeArray[index]}',
                                style: TextStyle(
                                  color: Color(0xFF4B4B4B),
                                  fontSize: 10.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          trailing: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Visibility(
                                    child: Container(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/blusPlus.png"),
                                        fit: BoxFit.fill,
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            0.03,
                                      ),
                                    ),
                                    maintainSize: true,
                                    maintainAnimation: true,
                                    maintainState: true,
                                    visible: true,
                                  ),
                                  SizedBox(width: 3),
                                  new Container(
                                      child: Icon(Icons.chevron_right)),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          // separatorBuilder: (context, index) {
          //   return Divider(
          //     height: 1,
          //   );
          // },
        ))
        : Container(
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
      //color: Colors.red,
    );
  }
}
