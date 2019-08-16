import 'package:flutter/material.dart';
import 'package:instagram_app/icons/instagram_app_icons.dart';


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
      description:
          "TCristiano Ronaldo dos Santos Aveiro was born in São Pedro, Funchal, on Madeira Island, Madeira, Portugal.",
      likes: 3251,
    ));
    user.add(Users(
      name: "l_messi",
      profile: "messi_profile.jpg",
      photo: "messi_pic.jpg",
      description:
          "Lionel Andrés Messi was born on 24 June 1987 in Rosario, the third of the four children of Jorge Messi.",
      likes: 2978,
    ));
    user.add(Users(
      name: "neymar_jr",
      profile: "neymar_profile.jpg",
      photo: "neymar_pic.jpg",
      description:
          "Neymar da Silva Santos Júnior was born in Mogi das Cruzes, São Paulo, to Neymar Santos Sr. and Nadine da Silva.",
      likes: 1354,
    ));
    user.add(Users(
      name: "d_beckham",
      profile: "beckham_profile.jpg",
      photo: "beckham_pic.jpg",
      description:
          "Beckham was born at Whipps Cross University Hospital in Leytonstone, London, England.",
      likes: 1354,
    ));
    user.add(Users(
      name: "w_rooney",
      profile: "rooney_profile.jpg",
      photo: "rooney_pic.jpg",
      description:
          "Rooney was born in Croxteth, Liverpool, to Jeanette Marie (née Morrey) and Thomas Wayne Rooney.",
      likes: 1354,
    ));
    user.add(Users(
      name: "m_rahford",
      profile: "rahford_profile.jpg",
      photo: "rahford_pic.jpg",
      description:
          "Rashford was born in Wythenshawe, Manchester, and is of Kittitian descent.",
      likes: 1354,
    ));
    user.add(Users(
      name: "ramos",
      profile: "ramos_profile.jpg",
      photo: "ramos_pic.jpg",
      description:
          "In the summer of 2005, Ramos was purchased by Real Madrid for €27 million, a record for a Spanish defender.",
      likes: 1354,
    ));
    user.add(Users(
      name: "a_martial",
      profile: "martial_profile.jpg",
      photo: "martial_pic.jpg",
      description:
          "On 1 September 2015, Martial completed a move to Manchester United for £36 million.",
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
        disabledColor: Colors.black,
          icon: Icon(InstagramApp.camera_outline),color: Colors.black,onPressed: null),
      title: Center(
        child: Container(
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(left: 45.0),
            child: Image(
              image: ExactAssetImage("assets/images/logo.png"),
              fit: BoxFit.cover,
            )),
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
            icon: Icon(InstagramApp.paper_plane_3),
            color: Colors.black,
            onPressed: () {
              //TODO: share
            }),
      ],
    );
  }

  _buildBody() {
    return Container(
      child: ListView(
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
          Container(
            padding: EdgeInsets.only(top: 5.0),
            height: 600.0,

            child: _buildListViewTimeline(),
          ),
        ],
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
            padding: EdgeInsets.all(3.0),
            margin: EdgeInsets.only(
              left: 5.0,
              right: 5.0,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromARGB(255, 254, 218, 117),
                      Color.fromARGB(255, 250, 126, 30),
                      Color.fromARGB(255, 214, 41, 118),
                      Color.fromARGB(255, 150, 47, 191),
                      Color.fromARGB(255, 79, 91, 213),
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

  _buildListViewTimeline() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: user.length,
      itemBuilder: (context, index) {
        return _buildTimeline(user[index]);
      },
    );
  }

  _buildTimeline(Users usertimeline) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: ExactAssetImage(
                                "assets/images/${usertimeline.profile}"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      usertimeline.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: Container(
                      child: IconButton(
                          icon: Icon(Icons.linear_scale), onPressed: null),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
//              shape: BoxShape.circle,
                image: DecorationImage(
                    image:
                        ExactAssetImage("assets/images/${usertimeline.photo}"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(InstagramApp.heart_empty_3),
                          onPressed: () {
                            //TODO: Like button
                          }),
                      IconButton(
                          icon: Icon(InstagramApp.comment_3),
                          onPressed: () {
                            //TODO: Comment button
                          }),
                      IconButton(
                          icon: Icon(InstagramApp.paper_plane_3),
                          onPressed: () {
                            //TODO: Share button
                          }),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(InstagramApp.bookmark_empty),
                          onPressed: () {
                            //TODO: Bookmark button
                          }),
                    ],
                  )
                ],
              ),

              Row(
                children: <Widget>[
                  Text(
                    "${usertimeline.likes.toString()} Likes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "${usertimeline.name}  ",
//                  style: DefaultTextStyle.of(context).style,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: usertimeline.description,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 3.0),
                    child: Text(
                      "2 days ago",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),


            ],
          ),

        ],
      ),
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
              InstagramApp.home_7,
//              size: 35.0,
            ),
            onPressed: () {
              //TODO: Home action
            }),
        IconButton(
            icon: Icon(
              InstagramApp.search,

            ),
            onPressed: () {
              //TODO: Search action
            }),
        IconButton(
            icon: Icon(
              InstagramApp.plus_squared_alt,
            ),
            onPressed: () {
              //TODO: Add action
            }),
        IconButton(
            icon: Icon(
              InstagramApp.heart_empty_3,
            ),
            onPressed: () {
              //TODO: Love action
            }),
        IconButton(
            icon: Icon(
              InstagramApp.user_9,
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
