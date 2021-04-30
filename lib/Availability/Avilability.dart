
import 'package:flutter/material.dart';
import 'package:ownertesting/Availability/double_room.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Home.dart';
import 'package:ownertesting/show%20All/showall.dart';
import 'package:table_calendar/table_calendar.dart';

//import 'package:custom_switch/custom_switch.dart'

class Availability_Owner extends StatelessWidget {
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
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,


          leading:Padding(
              padding: const EdgeInsets.all(8.0),
              child:IconButton(
                icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return Home();

                  },
                  ),);

                },

              )
          ),

          title: Text("Availability", style: TextStyle(color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.normal),),
          actions: [
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 20.09,
            ),
          ],

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search by reservation number",
                      hintStyle: TextStyle(fontSize: 16),
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
              ),
              Container(
                child: Column(
                  children: [
                    Text("Calender to be inserted",
                      style: TextStyle(color: Colors.black, fontSize: 14.0,),)
                  ],

                ),
              ),
              Divider(),
              SizedBox(height: 20.0,),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text("Double Room",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("open" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.normal),),
                        SizedBox(
                          width: 60.0,
                          height: 40.0,

                          child: Switch(
                              materialTapTargetSize: MaterialTapTargetSize.padded,
                              activeColor:Color(0xFF61498C),
                              value: true,
                              onChanged: (value) {
                                // print("VALUE : $value");
                               // setState(() {
                                //status = value;
                              }
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Rooms",style: TextStyle(color:Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget> [

                            IconButton(
                              icon:Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                            Text("5" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                            IconButton(icon: Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Available Rooms",style: TextStyle(color:Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget> [

                            IconButton(
                              icon:Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                            Text("2" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                            IconButton(icon: Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reserved Rooms" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                        Text("3" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rates & restrictions" ,style: TextStyle(color: Colors.deepPurpleAccent[200],fontSize: 13.0,fontWeight: FontWeight.bold,),),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 40.0,),
              Container(
                // color: Colors.amber,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text("Quadruple Room",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Fully Booked" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.normal),),
                        SizedBox(
                          width: 60.0,
                          height: 40.0,

                          child: Switch(
                              materialTapTargetSize: MaterialTapTargetSize.padded,
                              activeColor: Color(0xFF61498C),
                              value: true,
                              onChanged: (value) {
                                // print("VALUE : $value");
                                // setState(() {
                                //status = value;
                              }
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Rooms",style: TextStyle(color:Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget> [

                            IconButton(
                              icon:Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                            Text("5" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                            IconButton(icon: Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Available Rooms",style: TextStyle(color:Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget> [

                            IconButton(
                              icon:Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                            Text("0" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                            IconButton(icon: Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reserved Rooms" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                        Text("5" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rates & restrictions" ,style: TextStyle(color: Colors.deepPurpleAccent[200],fontSize: 13.0,fontWeight: FontWeight.bold,),),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 40.0,),
              Container(
                // color: Colors.lightBlueAccent,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text("Twin Double Room",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Closed" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.normal),),
                        SizedBox(
                          width: 60.0,
                          height: 40.0,

                          child: Switch(
                              materialTapTargetSize: MaterialTapTargetSize.padded,
                              activeColor: Color(0xFF61498C),
                              value: true,
                              onChanged: (value) {
                                // print("VALUE : $value");
                                // setState(() {
                                //status = value;
                              }
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Rooms",style: TextStyle(color:Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget> [

                            IconButton(
                              icon:Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                            Text("5" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                            IconButton(icon: Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Available Rooms",style: TextStyle(color:Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget> [

                            IconButton(
                              icon:Icon(Icons.add_box_outlined,size: 20.0,),
                            ),
                            Text("3" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                            IconButton(icon: Icon(Icons.add_box_outlined,size: 20.0,),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return Double_room();
                                }
                                ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reserved Rooms" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                        Text("3" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rates & restrictions" ,style: TextStyle(color: Colors.deepPurpleAccent[200],fontSize: 13.0,fontWeight: FontWeight.bold,),),
                      ],
                    )
                  ],
                ),
              ),


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

  void setState(Null Function() param0) {}

  // void setState(Null Function() param0) {}
 }
 