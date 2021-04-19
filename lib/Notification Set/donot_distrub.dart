import 'package:flutter/material.dart';
import 'package:ownertesting/Notification%20Set/Topfacilities.dart';

class Donot_Distrub extends StatefulWidget {
  @override
  _Donot_DistrubState createState() => _Donot_DistrubState();
}

class _Donot_DistrubState extends State<Donot_Distrub> {
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
          appBar: AppBar(
            title: Text("Do not distrub",style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal),),
            leading:Padding(
                padding: const EdgeInsets.all(8.0),
                child:IconButton(
                  icon: const Icon(Icons.arrow_back_rounded,),
                  onPressed: () {
                    setState(() {

                    });
                  },
                )
            ),
            actions: [
              Text("Done",style: TextStyle(color: Colors.purple,fontSize: 16.0,fontWeight: FontWeight.normal),),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Quiet hours" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      Text("When Do not distrub enabled, alerts that arrive during \nquiet hours will be Silenced." ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Enabled" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {
                              Navigator.push(context, MaterialPageRoute(builder:(context){
                                return Top_Facilities();
                              }
                              ),
                              );
                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("From" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                          Text("To" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("21:00" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                          Text("07:00" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ],
                  )

                ],
              ),
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



        )
    );
  }
}
