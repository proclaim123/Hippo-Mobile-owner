import 'package:flutter/material.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Recommendation.dart';
import 'package:ownertesting/Offers/receiveandacceptoffers.dart';

class Cinomon_Citadel extends StatefulWidget {
  @override
  _Cinomon_CitadelState createState() => _Cinomon_CitadelState();
}

class _Cinomon_CitadelState extends State<Cinomon_Citadel> {
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
        child:Scaffold(
          appBar:AppBar(
            title: Row(
              children: [
                Text("Cinnamon Citadel",style: TextStyle(color: Colors.black),),
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_down,),
                  onPressed: () {
                    setState(() {

                    });
                  },
                   ),
              ],
            ),
            
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/heritance-six-mob.png",width: double.infinity,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cinnamon Citadel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/5-star.png",width: 30.0,height: 40.0,),
                            Text(
                              "Thursday oct 03",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Divider(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Address" ,style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                          Text("Srimath Kudarathwatta Mawatha,Kandy 20000" ,style: TextStyle(color: Colors.blueAccent[600],fontSize: 15.0,fontWeight: FontWeight.normal),),
                          SizedBox(height: 10.0,),
                          Text("Property ID" ,style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                          Text("2327618" ,style: TextStyle(color: Colors.blueAccent[600],fontSize: 15.0,fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Divider(),
                    Container(
                      child: Column(
                        children:[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Change property name" ,style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios_rounded,),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context){
                                    return Offers();
                                  }
                                  ),
                                  );
                                  setState(() {

                                  });
                                },
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Photos" ,style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios_rounded,),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context){
                                    return Recommendation();
                                  }
                                  ),
                                  );
                                  setState(() {

                                  });
                                },
                              ),
                            ],
                          ),
                          Divider(), Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Property description" ,style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios_rounded,),
                                onPressed: () {
                                  setState(() {

                                  });
                                },
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Facilities& Services" ,style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios_rounded,),
                                onPressed: () {
                                  setState(() {

                                  });
                                },
                              ),
                            ],
                          ),
                        ]

                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: _selectedpage,
            onTap: (int index) {
              setState(() {
                _selectedpage =index;

              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,color: Colors.blueAccent,),
                  title: Text ('home')
              ), BottomNavigationBarItem(
                  icon: Icon(Icons.work_outlined,color: Colors.blueAccent,),
                  title: Text ('Reservation')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_sharp,color: Colors.blueAccent,),
                  title: Text ('Availability')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.email,color: Colors.blueAccent,),
                  title: Text ('Messages')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz_rounded,color: Colors.blueAccent,),
                  title: Text ('More')
              ),
            ],

          ),
          
        )
    );
  }
}
