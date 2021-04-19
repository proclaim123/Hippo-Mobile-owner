import 'package:flutter/material.dart';
import 'package:ownertesting/Bids/Request_Bids.dart';
import 'package:ownertesting/Bids/Sent_Bids.dart';


// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Booking(),
//   ));
// }

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2 , vsync: this,initialIndex:0)..addListener(() {
      setState(() {

      });

    });
  }
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return ;
              }),);
            },
            child:  IconButton(icon: Icon(Icons.arrow_back_rounded,size: 20.0,),


            ),
          ),
        ),
        actions: [

        ],
        bottom: TabBar(
          indicatorColor: Colors.purple,
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: 'Requested Bids',),

            Tab(text: 'Sent Bids',),

          ],
        ),
      ),
      body: new TabBarView(controller: _tabController,
        children: <Widget>[
            new Request_bids(),
            new Sent_bids(),
        ],
      ),
    );



  }
}

