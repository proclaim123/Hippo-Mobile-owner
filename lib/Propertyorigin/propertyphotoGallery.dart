import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Item {
  String imageUrl;
  int rank;
  Item(this.imageUrl, this.rank);
}

class PropertyPhotoGallery extends StatefulWidget {
  @override
  _PropertyPhotoGalleryState createState() => _PropertyPhotoGalleryState();
}

class _PropertyPhotoGalleryState extends State<PropertyPhotoGallery> {
  List<Item> itemList;
  List<Item> selectedList;
  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = List();
    selectedList = List();

    List.generate(40, (index) {
      itemList.add(Item("assets/galImg.png", index + 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0.0)),
      ),
      home: Scaffold(
        appBar: AppBar(
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              selectedList.length < 1
                  ? "Photo Gallery"
                  : "${selectedList.length} Photo selected",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: <Widget>[
              selectedList.length > 0
                  ? Container()
                  : FlatButton(
                textColor: Color(0xFF61498C),
                onPressed: () {
                  print("object");
                  pushNewScreen(
                    context,
                    screen: PropertyPhotoGallery(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation:
                    PageTransitionAnimation.cupertino,
                  );
                },
                child: Text(
                  "Select",
                  style: TextStyle(
                    color: Color(0xFF61498C),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Text',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                shape: CircleBorder(
                    side: BorderSide(color: Colors.transparent)),
              ),
            ],
            leading: IconButton(
              splashColor: Colors.grey,
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: _myPhotoGridView(),
        ),
        bottomSheet: selectedList.length < 1
            ? _myAddPhotobuttonBS()
            : _myActionBottomSheet(),
      ),
    );
  }

//BottomSheet
  Widget _myActionBottomSheet() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.09,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Image(
              image: AssetImage("assets/export (1).png"),
              color: Color(0xFF030104),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Add to',
              style: TextStyle(
                color: Color(0xFF030104),
                fontSize: 17.0,
                fontFamily: 'SF Pro Text',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          FlatButton(
              onPressed: () async {
                print("share");
                // await _shareImage();
              },
              child: selectedList.length < 1
                  ? Container()
                  : InkWell(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < selectedList.length; i++) {
                      itemList.remove(selectedList[i]);
                    }
                    selectedList = List();
                  });
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image:
                      AssetImage("assets/icon (3).png"),
                      color: Color(0xFF030104),
                    )),
              ))
        ],
      ),
    );
  }

  Widget _myAddPhotobuttonBS() => Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: double.infinity,
    color: Colors.transparent,
    child: GestureDetector(
      onTap: () => print('Get started'),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height / 17,
            child: RaisedButton(
                color: Color(0xFF61498C),
                onPressed: () {
                  print("Get start");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Test()),
                  // );
                },
                child: Text(
                  'Add new photos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6.0))),
          ),
        ),
      ),
    ),
  );

  Widget _myPhotoGridView() {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemBuilder: (context, index) {
          return GridItem(
              item: itemList[index],
              isSelected: (bool value) {
                setState(() {
                  if (value) {
                    selectedList.add(itemList[index]);
                  } else {
                    selectedList.remove(itemList[index]);
                  }
                });
                print("$index : $value");
              },
              key: Key(itemList[index].rank.toString()));
        });
  }
}

class GridItem extends StatefulWidget {
  final Key key;
  final Item item;
  final ValueChanged<bool> isSelected;

  GridItem({this.item, this.isSelected, this.key});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Stack(
        children: <Widget>[
          Image.asset(
            widget.item.imageUrl,
            color: Colors.black.withOpacity(isSelected ? 1 : 0),
            colorBlendMode: BlendMode.color,
          ),
          isSelected
              ? Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
            ),
          )
              : Container()
        ],
      ),
    );
  }
}
