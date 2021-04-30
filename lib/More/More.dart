// import 'package:flutter/material.dart';
// import 'package:ownertesting/Notification%20Set/notification_setting.dart';
// import 'package:ownertesting/promotion_origin/dart/promotiontab.dart';
//
// class Moreee extends StatefulWidget {
//   @override
//   _MoreeeState createState() => _MoreeeState();
// }
//
// class _MoreeeState extends State<Moreee> {
//   bool _switchValue = true;
//   int counter =0;
//   String dropdownstr="Info";
//   int _selectedpage =0;
//   final _pageOptions =[
//     Text('Items 1',style: TextStyle(fontSize: 26.0 ),),
//     Text('Items 2',style: TextStyle(fontSize: 26.0 ),),
//     Text('Items 3',style: TextStyle(fontSize: 26.0 ),),
//     Text('Items 4',style: TextStyle(fontSize: 26.0 ),),
//     Text('Items 5',style: TextStyle(fontSize: 26.0 ),),
//
//
//   ];
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.white,
//              title: Center(
//               child: Text("More",style: TextStyle(color: Colors.black,fontSize: 15.0),
//
//               ),
//             ),
//          ),
//
//         body: SingleChildScrollView(
//           child: Padding(
//
//             padding: EdgeInsets.only(top: 20.0),
//             child: Column(
//               children: [
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children:<Widget> [
//
//                       Row(
//                         children: [
//                           Image.asset("assets/auction.png",width: 40,height: 30,),
//                           Text("Bid Request" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           new ButtonBar(
//                             mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
//                             children: <Widget>[
//                               new RaisedButton(
//                                 color:Colors.deepPurple,
//                                 child: new Text('21'),
//                                 onPressed: null,
//                               ),
//                             ],
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(
//                                     builder: (
//                                     context) {
//                                   return Notification_Setting();
//                                 }
//                                 ),
//                                 );
//
//                               }
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//
//
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children:<Widget> [
//
//                       Row(
//                         children: [
//                           Image.asset("assets/tags.png",width: 40,height: 30,),
//                           Text("Received offers" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           new ButtonBar(
//                             mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
//                             children: <Widget>[
//                               new RaisedButton(
//                                 color:Colors.amber,
//                                 child: new Text('12'),
//                                 onPressed: null,
//                               ),
//                             ],
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//
//
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 SizedBox(height: 20.0,),
//                 Container(
//                     child: Row(
//                       children:[Text("Gust Reviews",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 17.0),
//                       ),
//                       ]
//
//                     ),
//                 ),
//                 Divider(),
//                 Container(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:<Widget> [
//
//                           Row(
//                             children: [
//                               Image.asset("assets/star.png",width: 40,height: 30,),
//                               Text("Gust reviews" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                             ],
//                           ),
//
//
//                               IconButton(
//                                 icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                                 onPressed: () {
//                                   setState(() {
//
//                                   });
//                                 },
//                               ),
//                             ],
//                       ),
//                       Divider(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:<Widget> [
//
//                           Row(
//                             children: [
//                               Image.asset("assets/exp.png",width: 40,height: 30,),
//                               Text("Gust experience" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                             ],
//                           ),
//
//
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 SizedBox(height: 20.0,),
//                 Container(
//                   child: Row(
//                       children:[Text("Property details",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 17.0),
//                       ),
//                       ]
//
//                   ),
//                 ),
//                 Divider(),
//                 Container(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:<Widget> [
//
//                           Row(
//                             children: [
//                               Image.asset("assets/house.png",width: 40,height: 30,),
//                               Text("Property(Cinnamon Citadel)" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                             ],
//                           ),
//
//
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       Divider(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:<Widget> [
//
//                           Row(
//                             children: [
//                               Image.asset("assets/meals.png",width: 40,height: 30,),
//                               Text("Meals" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                             ],
//                           ),
//
//
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       Divider(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:<Widget> [
//
//                           Row(
//                             children: [
//                               Image.asset("assets/surface.png",width: 40,height: 30,),
//                               Text("Promotions" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                             ],
//                           ),
//
//
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//                                 Navigator.push(context, MaterialPageRoute(builder:(context){
//                                   return Promotions();
//                                 }),);
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       Divider(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:<Widget> [
//
//                           Row(
//                             children: [
//                               Image.asset("assets/meals.png",width: 40,height: 30,),
//                               Text("Meals" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                             ],
//                           ),
//
//
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       Divider(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:<Widget> [
//
//                           Row(
//                             children: [
//                               Image.asset("assets/surface.png",width: 40,height: 30,),
//                               Text("Recommendations" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                             ],
//                           ),
//
//
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 SizedBox(height: 20.0,),
//                 Container(
//                   child: Row(
//                       children:[Text("Settings",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 17.0),
//                       ),
//                       ]
//
//                   ),
//                 ),
//                 Container(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Notification Settings" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       Divider(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Do not distrub" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       Divider(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Face ID & passcode" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                           IconButton(
//                             icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                             onPressed: () {
//                               setState(() {
//
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 30.0,),
//
//                       Container(
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("Terms and Conditions" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                                   IconButton(
//                                     icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                                     onPressed: () {
//                                       setState(() {
//
//                                       });
//                                     },
//                                   ),
//                                 ],
//                             ),
//                             Divider(),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("privacy and Policy" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                                 IconButton(
//                                   icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                                   onPressed: () {
//                                     setState(() {
//
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                             Divider(),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("Customer Service Help" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                                 IconButton(
//                                   icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                                   onPressed: () {
//                                     setState(() {
//
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                             Divider(),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("Rate us" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
//                                 IconButton(
//                                   icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                                   onPressed: () {
//                                     setState(() {
//
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 30,),
//                 Container(
//                   child: Column(
//                     children: [
//                       Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children:[
//                         Text("Log Out" ,style: TextStyle(color: Colors.blueGrey,fontSize: 17.0,fontWeight: FontWeight.normal),),
//                         IconButton(
//                           icon: const Icon(Icons.arrow_forward_ios_rounded,),
//                           onPressed: () {
//                             setState(() {
//
//                             });
//                           },
//                         ),
//                   ]
//                       )
//                     ],
//                   ),
//                 )
//
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.black,
//           currentIndex: _selectedpage,
//           onTap: (int index) {
//             setState(() {
//               _selectedpage =index;
//
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 title: Text ('home')
//             ), BottomNavigationBarItem(
//                 icon: Icon(Icons.work_outlined),
//                 title: Text ('Reservation')
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.calendar_today_sharp),
//                 title: Text ('Availability')
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.email),
//                 title: Text ('Messages')
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.more_horiz_rounded),
//                 title: Text ('More')
//             ),
//           ],
//
//         ),
//
//       ),
//     );
//   }
// }
