import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/components/topbar.dart';
import 'package:lonegram/constants.dart';
import 'package:lonegram/size_config.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          makeTopBarProfile(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.redAccent,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/89091174_117864919811218_7846069052407880774_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=DXmNVllwNtIAX9l6TEl&oh=e62ec3a35335a6bbbc8cbec645478e5a&oe=5F3CE1A4"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lone Cat",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              Text(
                "@lonecat1911",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 8,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "14",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: " posts",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "303",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: " followers",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "226",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: " following",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Software Developer",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "A sprinkle of...Oxygen trioxide😉",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Probably playing Candy Crush 😂",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "github.com/Fox520",
                style: TextStyle(fontSize: 14, color: Colors.blueAccent),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 8.5 * SizeConfig.heightMultiplier,
                width: double.infinity,
                margin: EdgeInsets.only(left: mainPaddingSize),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        maxRadius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                    _buildRoundThingy("http://lorempixel.com/640/480/food"),
                    _buildRoundThingy("http://lorempixel.com/640/480/cats"),
                    _buildRoundThingy(
                        "https://s3.amazonaws.com/uifaces/faces/twitter/nerdgr8/128.jpg"),
                    _buildRoundThingy(
                        "https://s3.amazonaws.com/uifaces/faces/twitter/peachananr/128.jpg"),
                    _buildRoundThingy("http://lorempixel.com/640/480/animals"),
                    _buildRoundThingy("http://lorempixel.com/640/480/nature"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Container(
                height: 4.5 * SizeConfig.heightMultiplier,
                width: double.infinity,
                margin: EdgeInsets.only(left: mainPaddingSize),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.grid_on,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Icon(Icons.person_outline, size: 30),
                  ],
                ),
              ),
              // Not the way to do it buh...
              _buildRow(
                "https://instagram.fers1-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/81236349_1487563691409359_5111193146277780459_n.jpg?_nc_ht=instagram.fers1-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=mlx3tcuEQC0AX9Gwq6f&oh=45248a1ffe11d73b0a39f5bf6e334d6b&oe=5F41D275",
                "http://lorempixel.com/640/480/transport",
                "http://lorempixel.com/640/480/nature",
                context,
              ),
              _buildRow(
                "http://lorempixel.com/640/480/cats",
                "http://lorempixel.com/640/480/city",
                "http://lorempixel.com/640/480/sports",
                context,
              ),
              _buildRow(
                  "http://lorempixel.com/640/480/people",
                  "http://lorempixel.com/640/480/food",
                  "https://s3.amazonaws.com/uifaces/faces/twitter/nutzumi/128.jpg",
                  context),
              _buildRow(
                  "http://lorempixel.com/640/480/animals",
                  "https://s3.amazonaws.com/uifaces/faces/twitter/BroumiYoussef/128.jpg",
                  "http://lorempixel.com/640/480/abstract",
                  context)
            ],
          ),
        ],
      ),
    );
  }

  _buildRoundThingy(String url) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: CircleAvatar(
        maxRadius: 30,
        backgroundImage: NetworkImage(url),
      ),
    );
  }

  _buildRow(String u1, String u2, String u3, BuildContext context) {
    return Container(
        height: 120,
        width: double.infinity,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.green,
                margin: EdgeInsets.all(1),
                child: Image.network(
                  u1,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.green,
                margin: EdgeInsets.all(1),
                child: Image.network(
                  u2,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 3,
                margin: EdgeInsets.all(1),
                child: Image.network(
                  u3,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ));
  }
}
