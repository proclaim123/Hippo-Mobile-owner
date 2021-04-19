import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Testingfornow(),
//   ));
// }

class Add_new_pro2 extends StatefulWidget {
  @override
  _Add_new_pro2State createState() => _Add_new_pro2State();
}

class _Add_new_pro2State extends State<Add_new_pro2> {

  bool valuefirst = false;
  bool valueSecond= true;
  bool valueThird= false;
  bool valueFourth=false;
  bool valueFith=false;
  bool valuesix=false;
  bool valueseven=false;
  bool valueEight=false;
  bool valuenine=false;
  bool valueten=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("Add New Promotion",style: TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold),)),

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
          child: Column(
            children: [
              Container(
                child: Column(
                  children:[
                    Text("How long do guests need to stay to get this \n promotion?",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal),),
                    Row(
                      children: [
                        OutlineButton(
                          borderSide: BorderSide(color: Colors.black),
                          shape: StadiumBorder(),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Match Your chosen rate',),
                              IconButton(
                                icon: const Icon(Icons.keyboard_arrow_down,),
                                onPressed: () {

                                },
                              ),
                            ],
                          ),


                        ),

                        Text("night(s) or more",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                      ],
                    ),



                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 10.0,),
              Container(
                child: Column(
                  children: [
                    Text("What is the minimum offering price(you want to give?)",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
                    Row(
                      children: [
                        OutlineButton(
                          onPressed: () {},
                          child: Text('10'),
                          borderSide: BorderSide(color: Colors.black),
                          shape: StadiumBorder(),

                        ),
                        OutlineButton(
                          borderSide: BorderSide(color: Colors.black),
                          shape: StadiumBorder(),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('A Percentage of the Base Price',),
                              IconButton(
                                icon: const Icon(Icons.keyboard_arrow_down,),
                                onPressed: () {

                                },
                              ),
                            ],
                          ),


                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Divider(),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("To Which rate(s) does this apply?)",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                          Text("The discount will be deducted from the rate(s) youi select here?)",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                          Row(
                            children: [
                              Checkbox(value:  this.valuefirst,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valuefirst = newValue;
                                  });
                                  Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Divider(),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("To Which rate(s) does this apply?)",style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.normal),),
                          Text("the discount will be applied to the room(s) you select.",style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.normal),),
                          Text("Make sure you select at least one rate in the section above so \n choice of rooms will show",style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.normal),),
                          Row(
                            children: [
                              Checkbox(value:  this.valueSecond,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valueSecond = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Standard Double Room',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value:  this.valueThird,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valueThird = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Standard Twin Double Room',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value:  this.valueFourth,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valueFourth = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Deluxe Room',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Divider(),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Row(
                        children: [
                          Text('When can gust stay using the discount rate ?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                        ],
                      ),

                    ),
                    SizedBox(height: 10.0,),
                    Divider(),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(value:  this.valueFith,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valueFith = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Monday',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value:  this.valuesix,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valuesix = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Tuesday',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value:  this.valueseven,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valueseven = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Wednesday',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value:  this.valueEight,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valueEight = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Thurseday',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value:  this.valuenine,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valuenine = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Friday',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value:  this.valueten,
                                activeColor: Colors.deepPurpleAccent,
                                onChanged:(bool newValue){
                                  setState(() {
                                    this.valueten = newValue;
                                  });
                                  //Text('Standard Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),);
                                },
                              ),

                              Text('Saturday',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17.0),),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),




      ),





    );
  }
}
