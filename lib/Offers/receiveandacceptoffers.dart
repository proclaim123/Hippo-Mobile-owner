import 'package:flutter/material.dart';
import 'package:ownertesting/Offers/AcceptedOffers.dart';
import 'package:ownertesting/Offers/Received.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2 , vsync: this, initialIndex:0)..addListener(() {
      setState(() {

      });

    });
  }




  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
         // backgroundColor: Colors.white,
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
              bottom: TabBar(
                indicatorColor: Colors.purple,
                  controller: _tabController,
                  tabs: <Widget>[
                   Tab(text: 'Received Offers',),
                    Tab(text: 'Accepted Offers',),
                ],
                ),
          title: Center(child: Text("Offers",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
        ),
        body: new TabBarView(controller: _tabController,
          children: [
              new Received_offers(),
              new Accept_offers()
          ],

        )
    );
  }
}



