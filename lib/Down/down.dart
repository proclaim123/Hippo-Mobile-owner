import 'package:flutter/material.dart';

class Down extends StatefulWidget {
  @override
  _DownState createState() => _DownState();
}

class _DownState extends State<Down> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Text('Add selected photos to other rooms',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 13.0),),
                Divider(color: Colors.black,),
                SizedBox(height:10.0,),
                Text('Double Room',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.normal,fontSize: 17.0),),
                Divider(color: Colors.black,),
                SizedBox(height:10.0,),
                Text('Quadruplpe Room',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.normal,fontSize: 17.0),),
                Divider(color: Colors.black,),
                SizedBox(height:10.0,),
                Text('Twin Double Room',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.normal,fontSize: 17.0),),
                Divider(color: Colors.black,),
                SizedBox(height:10.0,),
                Divider(),
                ButtonTheme(
                  buttonColor: Colors.white,
                  height: 50.0,
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return ;
                      }
                      ),
                      );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Cancel",style: TextStyle(color: Colors.blueAccent),),
                  ),
                ),
              ],
            ),

          ),


        )
    );
  }
}
