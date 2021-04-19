import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownertesting/Cinnamon%20Citadel/Cinomon%20Citadel.dart';
import 'package:ownertesting/SignUpPage/Letsget_started.dart';
import 'package:ownertesting/SignUpPage/Verify_ur_num.dart';
import 'package:ownertesting/SignUpPage/Verify_urnum2.dart';
import 'package:ownertesting/SignUpPage/enter_ur_Email.dart';


// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//
//   ));
// }

class Forget_paswrd extends StatefulWidget {
  @override
  _Forget_paswrd createState() => _Forget_paswrd();
}

class _Forget_paswrd extends State<Forget_paswrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            SafeArea(
              child:IconButton(
                icon: const Icon(Icons.arrow_back,),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return Lets_Start();
                  }
                  ),
                  );
                },
              ),
            ),
            Text("  Forget My Password",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.normal),),

            Text("    Enter Your Mobile number",style: TextStyle(color:Colors.black ),),
            SizedBox(
              height: 25.0,
            ),
            TextFormField(
              decoration: InputDecoration(

                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),

                  child: Image.asset(
                    "assets/srilanka.png",
                    width: 30,
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
                hintText: "+94 79 123 45 67" ,

                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),

            SizedBox(
              height: 50.0,
              child: ButtonTheme(
                buttonColor: Colors.deepPurple[400],
                height: 180.0,
                minWidth: 200.0,
                child: Center(
                  child: RaisedButton(
                    onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return Verify_num2();
                      }),);
                    },
                    color: Colors.deepPurple[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text("Next",style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return New_pass2();
                    }
                    ),
                    );
                  },
                  child: new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Text("Send an Email",style: TextStyle(color: Colors.deepPurple[200]),)
                  ),
                ),),
            SizedBox(
              height:20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Already have an account?",style: TextStyle(color: Colors.black,fontSize: 14.0),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Cinomon_Citadel();
                    }
                    ),
                    );
                  },
                  child: new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Text("Log In",style: TextStyle(color: Colors.deepPurple[200],fontSize: 14.0),)
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
