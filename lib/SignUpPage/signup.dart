import 'package:flutter/material.dart';
import 'package:ownertesting/SignUpPage/Letsget_started.dart';

// void main (){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Signup(),
//   ));
// }

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(

            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors:[
                  Colors.purple[800],
                  Colors.purple[600],
                  Colors.purple[400],
                  Colors.purple[200],


                ],),
              image: DecorationImage(
                image: AssetImage("assets/loginBg.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Colors.deepPurpleAccent[300].withOpacity(0.2),BlendMode.dstATop)
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 100.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/hippoWithText.png",width: 200.0,height: 100.0,),
                    //Text('test'),
                  ],
                ),
                SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Property Management app for \n Property Owners",style:TextStyle(color: Colors.amber,fontSize: 17.0,fontWeight: FontWeight.normal),)
                  ],
                ),
                SizedBox(height: 10.0,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50.0,
                        child: ButtonTheme(
                          buttonColor: Colors.purple,
                          height: 180.0,
                          minWidth: 300.0,
                          //minWidth: double.infinity,
                          child: Center(
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return ;
                                }),);
                              },
                              color: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Continue as Kate S",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                        child: ButtonTheme(
                          buttonColor: Colors.purple,
                          height: 180.0,
                          minWidth: 300.0,
                          //minWidth: double.infinity,
                          child: Center(
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return ;
                                }),);
                              },
                              color: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Sign in with Google",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Center(
                  child: Image.asset("assets/orLine.png",
                    height: 40.0,),
                ),

                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                        child: ButtonTheme(
                          buttonColor: Colors.purple,
                          height: 180.0,
                          minWidth: 300.0,
                          //minWidth: double.infinity,
                          child: Center(
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return Lets_Start() ;
                                }),);
                              },
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Sign In with Your email",
                                style: TextStyle(color: Colors.deepPurpleAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0,),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                           Text("New? ",style: TextStyle(color: Colors.white),),
                           Text("List Your property now!",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

