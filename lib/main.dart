import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/size_config.dart';

import './screens/feed.dart';
import 'components/topbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pageIndex = 0;
  // GlobalKey _bottomNavigationKey = GlobalKey();

  Widget _getScreen() {
    switch (_pageIndex) {
      case 0:
        return Feed();
        break;
      case 1:
        return Container(
          color: Colors.yellow,
          height: double.infinity,
          width: double.infinity,
        );
        break;
      case 3:
        return Feed();
        break;
      default:
        return Feed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return CupertinoApp(
              debugShowCheckedModeBanner: false,
              title: 'LoneGram',
              home: CupertinoTabScaffold(
                  tabBar: CupertinoTabBar(
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Foundation.home,
                            size: 6.31 * SizeConfig.imageSizeMultiplier),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(AntDesign.search1,
                            size: 6.31 * SizeConfig.imageSizeMultiplier),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(AntDesign.plus,
                            size: 6.31 * SizeConfig.imageSizeMultiplier),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(AntDesign.hearto,
                            size: 6.31 * SizeConfig.imageSizeMultiplier),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person_outline,
                            size: 6.31 * SizeConfig.imageSizeMultiplier),
                      ),
                    ],
                  ),
                  tabBuilder: (context, i) {
                    return CupertinoTabView(
                      builder: (context) {
                        return CupertinoPageScaffold(
                          navigationBar: CupertinoNavigationBar(
                            middle: i == 0
                                ? Text(
                                    "Lonegram",
                                    style: TextStyle(
                                      fontFamily: "Billabong",
                                      color: Colors.black,
                                      fontSize:
                                          4.45 * SizeConfig.heightMultiplier,
                                      // letterSpacing: 1,
                                    ),
                                  )
                                : null,
                            leading: i == 0
                                ? Icon(
                                    Feather.camera,
                                    size: 8.3 * SizeConfig.imageSizeMultiplier,
                                  )
                                : null,
                            trailing: i == 0 ? trailingFeed() : null,
                          ),
                          child: Feed(),
                        );
                      },
                    );
                  }),
            );
          },
        );
      },
    );
  }
}
