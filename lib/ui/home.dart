import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  _buildDrawer() {
    return Drawer();
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white30.withOpacity(0.9),
      leading: IconButton(icon: Icon(Icons.camera_alt),iconSize: 30.0, onPressed: null),
      title: Center(
        child: Text("Instagram",
          style:TextStyle(color: Colors.black) ,),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.airplay),iconSize: 30.0,
            color: Colors.black,
            onPressed: () {
              //TODO: Action play
            }),
        IconButton(
            icon: Icon(Icons.cast),iconSize: 30.0,
            color: Colors.black,
            onPressed: () {
              //TODO: share
            }),
      ],
    );
  }

  _buildBody() {}
}

_buildBottomBar() {
  return BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: <Widget>[
        IconButton(icon: Icon(Icons.home,size: 35.0,), onPressed: (){
          //TODO: Home action
        }),
        IconButton(icon: Icon(Icons.search,size: 35.0,), onPressed: (){
          //TODO: Search action
        }),
        IconButton(icon: Icon(Icons.add_box,size: 35.0,), onPressed: (){
          //TODO: Add action
        }),
        IconButton(icon: Icon(Icons.favorite_border,size: 35.0,), onPressed: (){
          //TODO: Love action
        }),
        IconButton(icon: Icon(Icons.account_circle,size: 35.0,), onPressed: (){
          //TODO: Account action
        }),

      ],
    ),
  );
}
