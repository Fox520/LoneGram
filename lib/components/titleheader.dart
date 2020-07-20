import 'package:flutter/material.dart';
import '../size_config.dart';
import '../constants.dart';

makeTitleHeader() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: mainPaddingSize),
    child: Text(
      "Lonegram",
      style: TextStyle(
        fontFamily: "Billabong",
        fontSize: 8.45 * SizeConfig.heightMultiplier,
        letterSpacing: 1,
      ),
    ),
  );
}
