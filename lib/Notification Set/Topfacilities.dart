import 'package:flutter/material.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Cinomon%20Citadel.dart';
import 'file:///F:/Flutter%20vid/Owner/ownertesting/lib/propertyphotos/PropertyPhotos.dart';

class Top_Facilities extends StatefulWidget {
  @override
  _Top_FacilitiesState createState() => _Top_FacilitiesState();
}

class _Top_FacilitiesState extends State<Top_Facilities> {
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
          appBar: AppBar(
            title: Text("Top Facilities",style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal),),
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Swimming Pool" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {
                              Navigator.push(context, MaterialPageRoute(builder:(context){
                                return Cinomon_Citadel();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Spa" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Familly Rooms" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {
                              Navigator.push(context, MaterialPageRoute(builder:(context){
                                return Properties_photos();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Air COnditioning" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Non-Smoking Rooms" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sauna" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Airport Shuttle" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("24-Hours Front Desk" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fitness Center" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hot Tub/Jacuzzi" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Room Service" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Terrace" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Bar" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Garden" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Water Park" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kid's Club" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Electric Vehicle Charging Station" ,style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 50.0,

                        child: Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.deepPurple,
                            value: true,
                            onChanged: (value) {

                              // print("VALUE : $value");
                              // setState(() {
                              //status = value;
                            }
                        ),
                      )
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



        ),
    );
  }
}
