import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/size_config.dart';

import '../constants.dart';

makeTopBar() {
  return Container(
    margin: EdgeInsets.only(top: 6.76 * SizeConfig.heightMultiplier),
    padding: EdgeInsets.symmetric(horizontal: mainPaddingSize),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Feather.camera,
          size: 8.3 * SizeConfig.imageSizeMultiplier,
        ),
        Spacer(),
        Container(
          height: 9.72 * SizeConfig.imageSizeMultiplier,
          width: 9.72 * SizeConfig.imageSizeMultiplier,
          child: Image.network(
            "https://cdn0.iconfinder.com/data/icons/social-media-2222/64/IGTV-512.png",
            color: Colors.redAccent,
          ),
        ),
        SizedBox(
          width: 4.2 * SizeConfig.widthMultiplier,
        ),
        Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 8.3 * SizeConfig.imageSizeMultiplier,
              width: 8.3 * SizeConfig.imageSizeMultiplier,
              child: Image.network(
                "https://static.thenounproject.com/png/3084968-200.png",
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: -1.69 * SizeConfig.heightMultiplier,
              right: -1.39 * SizeConfig.widthMultiplier,
              child: Container(
                height: 20,
                width: 20,
                child: Center(
                  child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text(
                        "5",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
