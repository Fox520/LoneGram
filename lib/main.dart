import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/screens/profile.dart';
import 'package:lonegram/size_config.dart';

import './screens/feed.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pageIndex = 0;

  _getPage() {
    switch (_pageIndex) {
      case 0:
        return Feed();
        break;
      case 1:
        return Container(
          color: Colors.white,
          child: Center(
              child: Text(
            "Search route",
            style: TextStyle(fontSize: 30),
          )),
        );
        break;
      case 2:
        return Container(
          color: Colors.yellow,
          child: Center(
              child: Text(
            "Add post",
            style: TextStyle(fontSize: 30),
          )),
        );
        break;
      case 3:
        return Container(
          color: Colors.cyan,
          child: Center(
              child: Text(
            "Activity",
            style: TextStyle(fontSize: 30),
          )),
        );
        break;
      case 4:
        return Profile();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'LoneGram',
              home: Scaffold(
                body: _getPage(),
                bottomNavigationBar: CurvedNavigationBar(
                  height: 8.45 * SizeConfig.heightMultiplier,
                  backgroundColor: Colors.black45,
                  index: 0,
                  items: <Widget>[
                    Icon(Foundation.home,
                        size: 6.31 * SizeConfig.imageSizeMultiplier),
                    Icon(AntDesign.search1,
                        size: 6.31 * SizeConfig.imageSizeMultiplier),
                    Icon(AntDesign.plus,
                        size: 6.31 * SizeConfig.imageSizeMultiplier),
                    Icon(AntDesign.hearto,
                        size: 6.31 * SizeConfig.imageSizeMultiplier),
                    Icon(Icons.person_outline,
                        size: 6.31 * SizeConfig.imageSizeMultiplier),
                  ],
                  onTap: (index) {
                    //Handle button tap
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
