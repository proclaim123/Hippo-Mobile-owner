import 'package:flutter/material.dart';
import 'package:ownertesting/Offers/receiveandacceptoffers.dart';

class Add_Pro3 extends StatefulWidget {
  @override
  _Add_Pro3State createState() => _Add_Pro3State();
}

class _Add_Pro3State extends State<Add_Pro3> {
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("What's the name of your promotion?\n This name is just for your reference.It Won't be displayed to customers browsing Hotelshippo.com.",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),
                      ),
                    ),
                    new ButtonBar(
                      mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                      children: <Widget>[
                        new RaisedButton(
                          color:Colors.deepPurple,
                          child: Row(
                            children: [
                              new Text('10% October Deal',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),
                              ),


                            ],
                          ),

                          onPressed: null,

                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 20.0,),
                    ButtonTheme(
                      buttonColor: Colors.deepPurple[300],
                      height: 65.0,
                      minWidth: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context){
                            return Offers();
                          }
                          ),
                          );
                        },
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Show Advance Settings",style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              icon: const Icon(Icons.keyboard_arrow_down,),
                              onPressed: () {

                              },
                            ),
                          ],
                        ),

                      ),

                    ),
                  ],
                ),


              ),

            ),
          ),

    )
    );
  }
}
