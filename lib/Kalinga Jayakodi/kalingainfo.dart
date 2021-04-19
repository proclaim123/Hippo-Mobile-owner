import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: new ThemeData(
//       primaryColor: Colors.white,
//       accentColor: Colors.black,
//     ),
//     home: Info(),
//   ));
// }

//SAME WE NEEED 3 COPIES IF WANTED;

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thu Aug 14",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Kalinga jayakodi",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "1 night- 2 guest - 1 room",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "CHECK IN",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "CHECK OUT",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Thursday oct 01",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Thursday oct 03",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Special Notes",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Rooms With a better sea View",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(height: 40.0,),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Choose Room Type ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Double Room",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),),
                              Text("10 rooms available",style: TextStyle(color:Colors.black),),
                            ],
                          ),
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
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Quadruple Room",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),),
                              Text("3 rooms available",style: TextStyle(color:Colors.black),),
                            ],
                          ),
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
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Twin Double Room",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),),
                              Text("6 rooms available",style: TextStyle(color:Colors.black),),
                            ],
                          ),
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
                          ButtonTheme(
                            buttonColor: Colors.deepPurple[300],
                            height: 45.0,
                            minWidth: double.infinity,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context){
                                  return ;
                                }
                                ),
                                );
                              },
                              color: Colors.deepPurple[400],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),),
                              child: Text("Select rooms",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
