import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  GlobalKey<ExpandableBottomSheetState> key = new GlobalKey();
  // int _contentAmount = 4;
  List<int> myList = [1, 2, 3, 4];
  ExpansionStatus expansionStatus = ExpansionStatus.contracted;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpandableBottomSheet(
        //use the key to get access to expand(), contract() and expansionStatus
        key: key,

        //optional
        //callbacks (use it for example for an animation in your header)
        onIsContractedCallback: () => print('contracted'),
        onIsExtendedCallback: () => print('extended'),

        //optional; default: Duration(milliseconds: 250)
        //The durations of the animations.
        animationDurationExtend: Duration(milliseconds: 500),
        animationDurationContract: Duration(milliseconds: 250),

        animationCurveExpand: Curves.bounceOut,
        animationCurveContract: Curves.ease,

        persistentContentHeight: 220,

        //required
        //This is the widget which will be overlapped by the bottom sheet.
        background: Container(
          color: Colors.white,
        ),

        //optional
        //This widget is sticking above the content and will never be contracted.
        persistentHeader: Container(
          color: Colors.white,
          constraints: BoxConstraints.expand(height: 40),
          child: Center(
            child: Container(
              height: 4.0,
              width: 40.0,
              color: Color.fromARGB((0.25 * 255).round(), 0, 0, 0),
            ),
          ),
        ),

        //required
        //This is the content of the bottom sheet which will be extendable by dragging.
        expandableContent: Container(
          constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: myList.length,
                    itemBuilder: (BuildContext context, int position) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Image(
                                    image: AssetImage(
                                        "assets/heritance-six-mob.png"),
                                    fit: BoxFit.fill,
                                  )),
                              title: Text(
                                "Cinnamon Citadel",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontFamily: 'SF Pro Display',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: Icon(Icons.done),
                              onTap: () {/* react to the tile being tapped */}),
                          Divider(height: 3.0),
                        ],
                      );
                    })

                // Container(
                //   height: 50,
                //   color: Colors.red[((i % 8) + 1) * 100],
                // ),
              ],
            ),
          ),
        ),

        //optional
        //This is a widget aligned to the bottom of the screen and stays there.
        //You can use this for example for navigation.
        persistentFooter: Container(
          color: Colors.white,
          // height: MediaQuery.of(context).size.height * 0.07,
          child: ListTile(
              leading: Icon(Icons.add),
              title: Text(
                "List Your Property",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                setState(() {
                  // _contentAmount++;
                  myList.add(1);
                });
              }),
        ),
      ),
    );
  }
}
