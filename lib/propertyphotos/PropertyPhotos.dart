import 'package:flutter/material.dart';

class Properties_photos extends StatefulWidget {
  @override
  _Properties_photosState createState() => _Properties_photosState();
}

class _Properties_photosState extends State<Properties_photos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
                             child:AppBar(
                                 backgroundColor: Colors.white,
                                title:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                         Text("Show All ",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold,),
                                      ),
                                          Padding(
                                              padding: EdgeInsets.all(16),
                                            child: TextField(
                                                  decoration: InputDecoration(
                                                  hintText: "Search by reservation number",
                                                  hintStyle: TextStyle(fontSize: 14),
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

                                                              ],
                                                              ),
                                                               actions: [
                                            IconButton(icon: Icon(Icons.menu,size: 20.0,),
                                                        ),
                                                        ],

                                                        ),

        ),

          body: SingleChildScrollView(


          ),

        ),
    );
  }
}
