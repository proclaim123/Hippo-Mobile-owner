import 'package:flutter/material.dart';
import 'package:ownertesting/promotion/Add_new_promotion.dart';

class Gust_review extends StatefulWidget {
  @override
  _Gust_reviewState createState() => _Gust_reviewState();
}

class _Gust_reviewState extends State<Gust_review> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar:AppBar(
            title: Center(
              child: Text("Gust Reviews",style: TextStyle(color: Colors.black, fontSize: 17.0,),
              ),
            ),
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
                  child: Column(
                    children: [
                      Row(
                        children:[
                        new ButtonBar(

                          mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                          children: <Widget>[
                            new RaisedButton(
                              color:Colors.amber,
                              child: new Text('9.2'),
                              onPressed: null,
                            ),
                          ],
                        ),
                          Text("Memorable stay with my family",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal,),),
                   ]
                      ),
                      Row(
                        children: [
                          Text("Minoli Perera-Family with young children (Srilanka)",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.normal,),),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios_rounded,),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context){
                                return Add_new_Promotion();
                              }
                              ),
                              );
                              setState(() {

                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Thu Aug 14",style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.normal,),),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.grey,),
                Container(
                  child: Column(
                    children: [
                      Row(
                          children:[
                            new ButtonBar(

                              mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                              children: <Widget>[
                                new RaisedButton(
                                  color:Colors.amber,
                                  child: new Text('9.2'),
                                  onPressed: null,
                                ),
                              ],
                            ),
                            Text("Excellent",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal,),),
                          ]
                      ),
                      Row(
                        children: [
                          Text("Michael Lue - Family with young children (Austria)",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.normal,),),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios_rounded,),
                            onPressed: () {
                              setState(() {

                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Thu Aug 14",style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.normal,),),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  child: Column(
                    children: [
                      Row(
                          children:[

                            Text("Excellent",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal,),),
                          ]
                      ),
                      Row(
                        children: [
                          Text("Michael Lue - Family with young children (Austria)",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.normal,),),

                        ],
                      ),
                      Row(
                        children: [
                          Text("Thu Aug 14",style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.normal,),),
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
