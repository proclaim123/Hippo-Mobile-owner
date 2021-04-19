import 'package:flutter/material.dart';
 class Active_promotion extends StatefulWidget {
   @override
   _Active_promotionState createState() => _Active_promotionState();
 }

 class _Active_promotionState extends State<Active_promotion> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
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
                                      return  ;
                                    }
                                    ),
                                    );
                                  },
                                  color: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("EDIT PROMOTION",style: TextStyle(color: Colors.white),),
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

     ),
     );
   }
 }
