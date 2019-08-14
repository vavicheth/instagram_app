import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Users> user = [];

  @override
  void initState() {
    super.initState();

    user.add(Users(
      name: "c_ronaldo",
      profile: "ronaldo_profile.jpg",
      photo: "ronaldo_pic.jpg",
      description: "",
      likes: 3251,
    ));
    user.add(Users(
      name: "l_messi",
      profile: "messi_profile.jpg",
      photo: "messi_pic.jpg",
      description: "",
      likes: 2978,
    ));
    user.add(Users(
      name: "neymar_jr",
      profile: "neymar_profile.jpg",
      photo: "neymar_pic.jpg",
      description: "",
      likes: 1354,
    ));
    user.add(Users(
      name: "neymar_jr",
      profile: "neymar_profile.jpg",
      photo: "neymar_pic.jpg",
      description: "",
      likes: 1354,
    ));
    user.add(Users(
      name: "neymar_jr",
      profile: "neymar_profile.jpg",
      photo: "neymar_pic.jpg",
      description: "",
      likes: 1354,
    ));
  }

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
      leading: IconButton(
          icon: Icon(Icons.camera_alt), iconSize: 30.0, onPressed: null),
      title: Center(        
        child: Container(
          padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(left: 45.0),
            child: Image(image: ExactAssetImage("assets/images/logo.png"),fit: BoxFit.cover,)),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.airplay),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {
              //TODO: Action play
            }),
        IconButton(
            icon: Icon(Icons.cast),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {
              //TODO: share
            }),
      ],
    );
  }

  _buildBody() {
    return Container(
      child: Container(
//        color: Colors.red,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 5.0),
              height: 100.0,
              child: _buildListViewProfile(),
            ),
            Container(
              height: 1.5,
              color: Colors.grey.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }

  _buildListViewProfile() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: user.length,
      itemBuilder: (context, index) {
        return _buildUserProfile(user[index]);
      },
    );
  }

  _buildUserProfile(Users userprofile) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 70.0,
            width: 70.0,
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(left: 5.0, right: 5.0,),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromARGB(255,254,218,117),
                      Color.fromARGB(255,250,126,30),
                      Color.fromARGB(255,214,41,118),
                      Color.fromARGB(255,150,47,191),
                      Color.fromARGB(255,79,91,213),
                    ])),
            child: Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: ExactAssetImage(
                          "assets/images/${userprofile.profile}"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            userprofile.name,
            style: TextStyle(),
          ),
        ),
      ],
    );
  }
}

_buildBottomBar() {
  return BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.home,
              size: 35.0,
            ),
            onPressed: () {
              //TODO: Home action
            }),
        IconButton(
            icon: Icon(
              Icons.search,
              size: 35.0,
            ),
            onPressed: () {
              //TODO: Search action
            }),
        IconButton(
            icon: Icon(
              Icons.add_box,
              size: 35.0,
            ),
            onPressed: () {
              //TODO: Add action
            }),
        IconButton(
            icon: Icon(
              Icons.favorite_border,
              size: 35.0,
            ),
            onPressed: () {
              //TODO: Love action
            }),
        IconButton(
            icon: Icon(
              Icons.account_circle,
              size: 35.0,
            ),
            onPressed: () {
              //TODO: Account action
            }),
      ],
    ),
  );
}

class Users {
  String name;
  String profile;
  String photo;
  String description;
  num likes;

  Users({this.name, this.profile, this.photo, this.description, this.likes});
}
