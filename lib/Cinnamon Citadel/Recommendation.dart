import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Recommendations",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold),)),

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
              padding: const EdgeInsets.only(top:8.0),
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
        )
    ),
    );
  }
}
