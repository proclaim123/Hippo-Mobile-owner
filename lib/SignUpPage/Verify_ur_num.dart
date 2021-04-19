import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   )
//   );
// }
class Verify extends StatefulWidget {
  @override
  _Verify createState() => _Verify();
}

class _Verify extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              SafeArea(
                child:IconButton(
                  icon: const Icon(Icons.arrow_back,),
                  onPressed: () {

                  },
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Text("Verify Your Number\n",style: TextStyle(color: Colors.black,fontSize:20.0,height: 1.0,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 0.0,
              ),
              Text("Please enter the 4-digit code sent to you at\n 070123456",style: TextStyle(color: Colors.grey,fontSize: 20.0),),
              SizedBox(height:50.0 ),
              SizedBox(
                height: 30.0,
                child:new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width: 20.0,),
                    new Flexible(
                      //to get multiple text field in a same line
                      child: new TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10)
                          )
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    new Flexible(
                      child: new TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10)
                          )
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    new Flexible(
                      child: new TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10)
                          )
                      ),
                    ),
                    SizedBox(width: 40.0,),
                    new Flexible(
                      child: new TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10)
                          )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height:40.0 // space between the textformfield and the button
              ),
              SizedBox(
                // the button starts soon after the verify numbers
                height: 50.0,

                child: Center(
                  child: ButtonTheme(
                    buttonColor: Colors.deepPurple[300],
                    height: 180.0,
                    minWidth: 300.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return ;
                        }),);
                      },



                      color: Colors.deepPurple[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 22.0),),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,

              ),
              Center(child: Text("Resend code in 0:15",style: TextStyle(color: Colors.grey,fontSize: 20.0),),)

            ],
          ),

        ),
      ),
    );
  }
}