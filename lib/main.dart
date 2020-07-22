import 'package:flutter/material.dart';
import 'package:lonegram/size_config.dart';

import './screens/feed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              home: Feed(),
            );
          },
        );
      },
    );
  }
}
