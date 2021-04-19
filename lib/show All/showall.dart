// import 'package:flutter/material.dart';
//
// import 'Chat_Model.dart';
//
// class Show_all extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: new ListView.builder(
//           itemCount: chatsData.length,
//           itemBuilder: (context, i) => new Column(
//             children: <Widget>[
//               new Divider(height: 0.1),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   new ListTile(
//                       leading: CircleAvatar(
//                         backgroundColor: Colors.grey,
//                         backgroundImage: NetworkImage(chatsData[i].pic),
//                       ),
//                       title: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           new Text(
//                             chatsData[i].name,
//                             style: TextStyle(
//                                 fontSize: 13.0, fontWeight: FontWeight.bold),
//                           ),
//                           new Text(
//                             chatsData[i].time,
//                             style: TextStyle(fontSize: 11.0, color: Colors.grey),
//                           )
//                         ],
//                       ),
//                       subtitle: Text(chatsData[i].msg,
//                           style: TextStyle(color: Colors.grey, fontSize: 11.0)
//                       )
//                   ),
//                 ],
//               )
//             ],
//           )
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:ownertesting/More/More.dart';

import 'Chat_Model.dart';

class Show_all extends StatefulWidget {
  @override
  _Show_allState createState() => _Show_allState();
}

class _Show_allState extends State<Show_all> {

  bool _switchValue = true;
  int counter =0;
  String dropdownstr="Info";
  int _selectedpage =0;
  final _pageOptions =[
    Text('Items 1',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 2',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 3',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 4',style: TextStyle(fontSize: 26.0 ),),
    Text('Items 5',style: TextStyle(fontSize: 26.0 ),),


  ];




  @override
  Widget build(BuildContext context) {
     return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child:AppBar(
               backgroundColor: Colors.white,
            title:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Show All ",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold,),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search by reservation number",
                      hintStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.only(left: 30,),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 24, left: 16),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
              actions: [
                IconButton(icon: Icon(Icons.menu,size: 20.0,),
                ),
              ],

          ),


        ),
          body:Container(
              width: double.infinity,
                      child: new ListView.builder(
                            itemCount: chatsData.length,
                          itemBuilder: (context, i) => new Column(
                          children: <Widget>[
                           new Divider(height: 0.1),
                             Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                    new ListTile(
                                      leading: CircleAvatar(
                                       backgroundColor: Colors.grey,
                                        backgroundImage: NetworkImage(chatsData[i].pic),
                                       ),
                                         title: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                             children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  new Text(
                                                  chatsData[i].name,
                                                  style: TextStyle(
                                                  fontSize: 13.0, fontWeight: FontWeight.bold),
                                                  ),
                                                  IconButton(
                                                    icon: const Icon(Icons.arrow_forward_ios_rounded,),
                                                    onPressed: () {
                                                      setState(() {
                                                        Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder: (
                                                                  context) {
                                                                return More();
                                                              }
                                                          ),
                                                        );
                                                      },
                                                      );
                                                    }
                                                    )
                                              ]
                                              ),
                                               new Text(
                                             chatsData[i].time,
                                               style: TextStyle(fontSize: 11.0, color: Colors.grey),
                                          )
                                          ],
                                          ),
                                       subtitle: Text(chatsData[i].msg,
                                         style: TextStyle(color: Colors.grey, fontSize: 11.0)
                                      )
                                      ),
                                      ],
                                      )
                                      ],
                                      )
                                          ),
                                      ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.yellow,
            currentIndex: _selectedpage,
            onTap: (int index) {
              setState(() {
                _selectedpage =index;

              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text ('home')
              ), BottomNavigationBarItem(
                  icon: Icon(Icons.work_outlined),
                  title: Text ('Reservation')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_sharp),
                  title: Text ('Availability')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.email),
                  title: Text ('Messages')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz_rounded),
                  title: Text ('More')
              ),
            ],

          ),
        ),
    );
  }
}


