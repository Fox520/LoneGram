import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lonegram/data_store.dart';
import 'package:lonegram/size_config.dart';

import '../constants.dart';

makeStories() {
  return Container(
      height: 13.5 * SizeConfig.heightMultiplier,
      width: double.infinity,
      margin: EdgeInsets.only(left: mainPaddingSize),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return storyItem(
            hasStory: stories[index].hasStory,
            url: stories[index].url,
            isOwner: stories[index].isOwner,
            username: stories[index].username,
          );
        },
        itemCount: stories.length,
        scrollDirection: Axis.horizontal,
      ));
}

Container storyItem(
    {bool hasStory, String url, bool isOwner = false, String username}) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: Stack(
      children: [
        Container(
          height: 70,
          width: 19.4 * SizeConfig.widthMultiplier,
          // margin: EdgeInsets.only(top: 5, right: 15, bottom: 5),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.purple,
            ]),
            borderRadius: BorderRadius.circular(45),
          ),
          child: Container(
            height: 70,
            width: 19.4 * SizeConfig.widthMultiplier,
            margin: hasStory
                ? EdgeInsets.all(0.83 * SizeConfig.widthMultiplier)
                : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Text(username),
        ),
      ],
    ),
  );
  // return Container(
  //   height: 40,
  //   width: 19.4 * SizeConfig.widthMultiplier,
  //   // margin: EdgeInsets.only(top: 5, right: 15, bottom: 5),
  //   decoration: BoxDecoration(
  //     gradient: LinearGradient(colors: [
  //       Colors.red,
  //       Colors.purple,
  //     ]),
  //     borderRadius: BorderRadius.circular(45),
  //   ),
  // );

  //   child: Stack(
  //     // overflow: Overflow.visible,
  //     children: [
  // Container(
  //   margin: hasStory
  //       ? EdgeInsets.all(0.83 * SizeConfig.widthMultiplier)
  //       : null,
  //   decoration: BoxDecoration(
  //     borderRadius: BorderRadius.circular(45),
  //     image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
  //   ),
  // ),
  //       isOwner
  //           ? Positioned(
  //               bottom: 0,
  //               right: 0.56 * SizeConfig.widthMultiplier,
  //               child: addStoryIcon(),
  //             )
  //           : Container(),
  //       Positioned(
  //         bottom: 0,
  //         child: Text(
  //           username,
  //           overflow: TextOverflow.ellipsis,
  //         ),
  //       ),
  //     ],
  //   ),
  // );
}

addStoryIcon() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(45),
    ),
    child: Icon(
      Feather.plus,
      size: 5.56 * SizeConfig.imageSizeMultiplier,
      color: Colors.white,
    ),
  );
}
