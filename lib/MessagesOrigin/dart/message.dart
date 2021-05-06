import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ownertesting/Availability/Availabilitynew.dart';
import 'package:ownertesting/Availability/Avilability.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/Moreorigin/More.dart';
import 'package:ownertesting/reservation/reservationList.dart';

// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MessageList(),
//   ));
// }


class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
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


class _MessageListState extends State<MessageList> {
  List<String> nameArray = [
    "Kalinga Jayakodi",
    "Minoli Perera",
    "Kalinga Jayakodi",
    "Kalinga Jayakodi",
    "Minoli Perera",
    "Kalinga Jayakodi",
    "Kalinga Jayakodi",
    "Minoli Perera",
    "Kalinga Jayakodi",
    "Kalinga Jayakodi",
    "Minoli Perera",
    "Kalinga Jayakodi",
  ];

  List<String> descArray = [
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
    "you sent me an attachment.",
  ];
  List<String> imgArray = [
    "msg2.png",
    "msg1.png",
    "msg2.png",
    "msg2.png",
    "msg1.png",
    "msg2.png",
    "msg2.png",
    "msg1.png",
    "msg2.png",
    "msg2.png",
    "msg1.png",
    "msg2.png",
  ];

  List<String> timeArray = [
    "09:12 PM",
    "07:30 AM",
    "12:56 PM",
    "09:12 PM",
    "07:30 AM",
    "12:56 PM",
    "09:12 PM",
    "07:30 AM",
    "12:56 PM",
    "09:12 PM",
    "07:30 AM",
    "12:56 PM",
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
              "Show all",
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
          body: mainBody(),
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
                  return Availability();
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



    ),
    );
  }

  Widget mainBody() {
    return Stack(children: <Widget>[
      Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.05,
        alignment: Alignment.center,
        child: Container(
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
      ),
      Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.056,
        ),
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
                      IconSlideAction(
                        caption: 'Read',
                        color: Colors.black38,
                        icon: Icons.message,
                        onTap: () {
                          //  setState(() {
                          //   this.isShow = false;
                          // });
                        },
                      ),
                    ],
                    secondaryActions: <Widget>[
                      /*  IconSlideAction(
                          caption: 'More',
                          color: Colors.black45,
                          icon: Icons.more_horiz,
                          // onTap: () => _showSnackBar('More'),
                        ), */
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
                      margin: EdgeInsets.only(bottom: 0, top: 1),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7.0, bottom: 7.0),
                        child: ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            child: Container(
                              child: Image(
                                image: AssetImage(
                                    "assets/${imgArray[index]}"),
                                fit: BoxFit.fill,
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
                              SizedBox(width: 2),
                              Visibility(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFEA307),
                                      borderRadius:
                                      BorderRadius.circular(3.0),
                                      border: Border.all(
                                          color: Color(0xFFFEA307),
                                          width: 0.0)),
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      0.18,
                                  child: Text(
                                    'Arrives today',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                maintainSize: true,
                                maintainAnimation: true,
                                maintainState: true,
                                visible: index == 2 ? false : true,
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
                                    child: Badge(
                                      badgeColor: Color(0xFF61498C),
                                      shape: BadgeShape.circle,
                                      // borderRadius: 3,
                                      // padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                                      badgeContent: Text(
                                        '2',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.0,
                                          fontFamily: 'SF Pro Display',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    maintainSize: true,
                                    maintainAnimation: true,
                                    maintainState: true,
                                    visible: index == 1 ? false : true,
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
