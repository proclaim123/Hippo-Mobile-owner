import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/promotion/Add_%20promo3.dart';
import 'package:ownertesting/promotion/Add_new%20promotion2.dart';

class Add_new_Promotion extends StatefulWidget {
  @override
  _Add_new_PromotionState createState() => _Add_new_PromotionState();
}

class _Add_new_PromotionState extends State<Add_new_Promotion> {

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
    Size size =MediaQuery.of(context).size;
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(child: Text("Add New Promotion",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold),)),

            leading:Padding(
              padding: const EdgeInsets.all(8.0),
              child:Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios,),
                    onPressed: () {

                    },
                  ),
                  Text("Back",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                ],
              ),

            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,),
                          Text("Holiday Deal",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                     SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Text("The lead-up to NYE is a busy travel time When \ncustomers want to celebrate are particularly\n price-sensitive.",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal),),

                        ],
                      ),
                      Divider(),
                      SizedBox(height: 15.0,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Book dates",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("From july 23,2019 to Oct 31, 2019",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Stay dates",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("From Sep 1,2019 to Oct 31, 2019",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Discount",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("minimum 25%",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Divider(color: Colors.grey,),
                          SizedBox(height: 10.0,),
                          ButtonTheme(
                            buttonColor: Colors.green,
                            height: 50.0,
                            //minWidth: 250.0,
                            minWidth: MediaQuery.of(context).size.width * 0.8,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return  Add_Pro3();
                                }
                                ),
                                );
                              },
                              color: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text("SET UP PROMOTION",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                ),
                // SizedBox(height: 5.0,),
                Divider(color: Colors.grey,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,),
                          Text("Holiday Deal",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Text("The lead-up to NYE is a busy travel time When \ncustomers want to celebrate are particularly\n price-sensitive.",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal),),

                        ],
                      ),
                      Divider(),
                      SizedBox(height: 15.0,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Book dates",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("From july 23,2019 to Oct 31, 2019",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Stay dates",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("From Sep 1,2019 to Oct 31, 2019",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Discount",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("minimum 25%",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Divider(color: Colors.grey,),
                          SizedBox(height: 10.0,),
                          ButtonTheme(
                            buttonColor: Colors.green,
                            height: 50.0,
                            //minWidth: 250.0,
                            minWidth: MediaQuery.of(context).size.width * 0.8,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return Add_new_pro2();
                                }
                                ),
                                );
                              },
                              color: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text("SET UP PROMOTION",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.grey,),
                          Text("Customise",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Text("The lead-up to NYE is a busy travel time When \ncustomers want to celebrate are particularly\n price-sensitive.",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.normal),),

                        ],
                      ),
                      Divider(),
                      SizedBox(height: 15.0,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Book dates",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("From july 23,2019 to Oct 31, 2019",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Stay dates",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("From Sep 1,2019 to Oct 31, 2019",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Discount",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                              Text("minimum 25%",style: TextStyle(color: Colors.grey,fontSize: 17.0,fontWeight: FontWeight.normal),),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Divider(color: Colors.grey,),
                          SizedBox(height: 10.0,),
                          ButtonTheme(
                            buttonColor: Colors.green,
                            height: 50.0,
                            //minWidth: 250.0,
                            minWidth: MediaQuery.of(context).size.width * 0.8,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return ;
                                }
                                ),
                                );
                              },
                              color: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text("SET UP PROMOTION",style: TextStyle(color: Colors.white),),
                            ),
                          ),
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
        ) ,
    );
  }
}
