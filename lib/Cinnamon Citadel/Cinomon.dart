import 'package:flutter/material.dart';
import 'package:ownertesting/Bids/Bids.dart';
import 'package:ownertesting/Offers/receiveandacceptoffers.dart';
import 'package:ownertesting/SignUpPage/Letsget_started.dart';

class Cinomon extends StatefulWidget {
  @override
  _CinomonState createState() => _CinomonState();
}

class _CinomonState extends State<Cinomon> {

  bool _switchValue = true;
  int counter =0;
  String dropdownstr="Info";
  int _selectedpage =4;
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
        appBar:AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Center(child: Text("Cinnamon Citadel",style: TextStyle(color: Colors.black),)),
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_down,),
                onPressed: () {
                  setState(() {

                  });
                },
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),

            child:  IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.black,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Lets_Start();
                }),);
              },
            ),
          ),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  color: Colors.deepPurple[300],
                  child: Column(
                    children: [
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Text("Daily overview ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Yesterday gross value  ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                          Text("\$120  ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Yesterday gross value  ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                          Text("\$120  ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Reviews ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                          Text(" 2  ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget> [

                    Row(
                      children: [
                        Image.asset("assets/auction.png",width: 40,height: 30,),
                        Text("Bid Request" ,style: TextStyle(color: Colors.blueGrey,fontSize: 15.0,fontWeight: FontWeight.normal),),
                      ],
                    ),
                    Row(
                      children: [
                        new ButtonBar(
                          mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                          children: <Widget>[
                            new RaisedButton(
                              color:Colors.deepPurple,
                              child: new Text('21'),
                              onPressed: null,
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios_rounded,),
                          onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (
                                        context) {
                                      return Booking();
                                    }
                                ),
                              );

                            }
                            );
                          },
                        ),
                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              ListTile(

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/recommBg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Recommend",style:TextStyle(color: Colors.amber,fontSize: 14.0,fontWeight: FontWeight.normal), ),
                      SizedBox(height: 5.0,),
                      Text("Welcome new-year bookingwith an\n Early 2020 Deal!",style:TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.normal), ),
                      SizedBox(height: 10.0,),
                      Text("Booking on your site peak in jan-ooptimize\nfor this extra interst by offering \n 10% off.",style:TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.normal), ),
                    ],
                  ),
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
              print(index);

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.blueAccent,),
                // onPressed: () {
                //   setState(() {
                //     Navigator.push(context, MaterialPageRoute(builder: (context){
                //       return Offers() ;
                //     }),);
                //   });
                // },
                title: Text ('home',style: TextStyle(color: Colors.black),)


            ), BottomNavigationBarItem(
              icon: Icon(Icons.work_outlined,color: Colors.blueAccent,),
              title: Text ('Reservation',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_sharp,color: Colors.blueAccent,),
              title: Text ('Availability',style: TextStyle(color: Colors.black),),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email,color: Colors.blueAccent,),
              title: Text ('Messages',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Colors.blueAccent,),
              title: Text ('Menu',style: TextStyle(color: Colors.black),),
            ),
          ],

        ),
      ),
    );
  }
}
