import 'package:flutter/material.dart';
import 'package:ownertesting/Availability/Avilability.dart';

class Info_Kalinga extends StatelessWidget {
  int counter =0;
  String dropdownstr="Info";
  int _selectedpage =0;
  final _pageOptions =[
    Text('Items 1',style: TextStyle(fontSize: 36.0 ),),
    Text('Items 2',style: TextStyle(fontSize: 36.0 ),),
    Text('Items 3',style: TextStyle(fontSize: 36.0 ),),

  ];






  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Column(
              children: [
                Text("Arriving on Mon, Dec 23,2019",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 11,),),
                SizedBox(height: 10.0,),
                Text("Kalinga Jayakodi",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13,),),
              ],
            ),
          ),
          leading: Padding(

            padding:const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.navigate_before,
                    color: Colors.purple,
                    size: 25.0,
                  ),
                ),
                Text("Back",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 13,fontWeight: FontWeight.normal),)
              ],
            ),

          ),
          actions: <Widget>[
            Text("Done",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 13,fontWeight: FontWeight.normal),)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Check Out",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("Nights",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mon, jan 12,2020",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("2",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gust",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("Rooms",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2 adults",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("1",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reservation number",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("Arrival time",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("6543218798",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("No time provided",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,//in the beginning its start from the center
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gust",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                          Text("From",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                            size: 20.09,
                          ),
                        ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Kalinga Jayakodi",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("Srilanka",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                        SizedBox(width: 75.0,),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Preferred language",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("Sinhala,English",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Address",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("6 Francis mahadeva Avenue,04,Colombo,Lk",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Contact",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("074856739",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email",style:TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                        Text("Kalingajayakodi@gmail.com",style:TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 20.0,),
              Container(
                    child: Column(
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,


                          children: [
                            Text("Total reservation price ",style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
                            Text("Reservation type",style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                              size: 20.09,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("US\$  120",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                            Text("Requested Bid",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                            SizedBox(width: 1.0,)

                          ],

                        ),
              ]
                    ),
              ),
                  Divider(),
                    SizedBox(height: 10.0,),
                    Container(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                 Text("Room details ",style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
                                   Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                    size: 20.09,
                                  ),
                                ],
                              ),
                               Text("Quardruple Room with Balcony",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                                ],
                             ),
                           SizedBox(height: 10.0,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Gust name",style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
                               Text("Kalinga Jayakodi",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                             ],
                           ),
                           SizedBox(height: 10.0,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Meal plan",style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
                               Text("Full board",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                             ],
                           ),
                           SizedBox(height: 10.0,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Cancellation policy",style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
                               Text("The gust can cancel free of charge until 7 days\n before arrival\n The gust will be charged the cost of the frist night \n if the cancel in the 7 days befor arrival",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                             ],
                           ),
                  ],
                ),

              ),

              Divider(),
              SizedBox(height: 10.0,),
              Container(
                child:Column(
                  children: [
                    OutlineButton(
                      child: Text("Add a note", style: TextStyle(fontSize: 15.0,color: Colors.deepPurple[200],),),
                      highlightedBorderColor: Colors.deepPurple[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                    ),
                    OutlineButton(

                      child: Text("Room is ready", style: TextStyle(fontSize: 15.0,color: Colors.deepPurple[200],),),
                      highlightedBorderColor: Colors.deepPurple[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return Availability_Owner();
                        }
                        ),
                        );
                      },
                    ),
                    OutlineButton(

                      child: Text("Report gust misconduct", style: TextStyle(fontSize: 15.0,color: Colors.grey,),),
                      highlightedBorderColor: Colors.deepPurple[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)

                      ),


                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context){
                            return Availability_Owner();
                          }
                          ),
                          );

                          }
                    ),
                    OutlineButton(

                      child: Text("MArk as no show", style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                      highlightedBorderColor: Colors.deepPurple[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),

                      onPressed: () {},
                    ),
                    OutlineButton(

                      child: Text("Request to cancel reservation", style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                      highlightedBorderColor: Colors.deepPurple[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),

                      onPressed: () {},
                    ),
                  ],
                ),


              ),
            ],
          ),


        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedpage,
          onTap: (int index) {
            setState(() {
              _selectedpage =index;

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                title: Text ('Call')
            ), BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                title: Text ('Messages')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.assistant_direction),
                title: Text ('Share Details')
            ),
          ],

        ),

      ),
      
    );
  }

  void setState(Null Function() param0) {}
}
