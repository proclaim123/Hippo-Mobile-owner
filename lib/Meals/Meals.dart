import 'package:flutter/material.dart';
class Meals extends StatefulWidget {
  @override
  _MealsState createState() => _MealsState();
}

class _MealsState extends State<Meals> {

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
                title: Text("Meals",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),) ,
                leading:Padding(
                  padding: const EdgeInsets.all(8.0),
                 child:Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back,),
                           onPressed: () {

                   },
                 ),
                               // Text("Back",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                 ],
               ),
               ),
                 actions: [
                   Text("Done",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 13,fontWeight: FontWeight.normal),),
           ],
         ),
          body: SingleChildScrollView(
            child:Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("What type of meals do you Offer your gust?",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Breakfast",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      Switch(
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          activeColor: Colors.deepPurple,
                          value: true,
                          onChanged: (value) {
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return ;
                            }
                            ),
                            );
                            // print("VALUE : $value");
                            // setState(() {
                            //status = value;
                          }
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Text("What is the price?",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ask insert a textbox",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      Text("Price are per Person",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lunch",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      Switch(
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          activeColor: Color(0xFF61498C),
                          value: false,
                          onChanged: (value) {
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return ;
                            }
                            ),
                            );
                            // print("VALUE : $value");
                            // setState(() {
                            //status = value;
                          }
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dinner",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      Switch(
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          activeColor: Color(0xFF61498C),
                          value: false,
                          onChanged: (value) {
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return ;
                            }
                            ),
                            );
                            // print("VALUE : $value");
                            // setState(() {
                            //status = value;
                          }
                      ),
                    ],
                  ),
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
