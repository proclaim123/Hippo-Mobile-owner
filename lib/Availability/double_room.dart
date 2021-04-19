import 'package:flutter/material.dart';
import 'package:ownertesting/show%20All/showall.dart';

class Double_room extends StatefulWidget {
  @override
  _Double_roomState createState() => _Double_roomState();
}

class _Double_roomState extends State<Double_room> {
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
                Divider(color: Colors.grey,),
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
                          activeColor: Colors.deepPurple,
                          value: true,
                          onChanged: (value) {
                            // print("VALUE : $value");
                            // setState(() {
                            //status = value;
                          }
                        ),
                      ),
                     ]
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

                      ],
                  ),
                ),
                    Divider(),
                    SizedBox(height: 20.0,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Rates & Restrictions", textAlign: TextAlign.left,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.bold,),
                        )
                    ),
                Divider(),
                SizedBox(height: 40.0,),
                Container(
                  color: Colors.amber,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                      Text("Standart Rate" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.normal),),
                      SizedBox(
                        width: 60.0,
                        height: 40.0,

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
                      ),
                    ],
                  ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Prices",style: TextStyle(color:Colors.black),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget> [

                              IconButton(
                                icon:Icon(Icons.add_box_outlined,size: 20.0,),
                              ),
                              Text("5" ,style: TextStyle(color: Colors.blueGrey,fontSize: 13.0,fontWeight: FontWeight.bold,),),
                              IconButton(icon: Icon(Icons.add_box_outlined,size: 20.0,),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context){
                                    return Show_all();
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
                          Text("Minimum length of Stay",style: TextStyle(color:Colors.black),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget> [

                              new ButtonBar(
                                mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                                children: <Widget>[
                                  new RaisedButton(
                                    child: new Text('1'),
                                    onPressed: null,
                                  ),
                                ],
                          ),

                           ]
                         )
                      ],
                    ),


                ]
                  ),
                )
              ]
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
