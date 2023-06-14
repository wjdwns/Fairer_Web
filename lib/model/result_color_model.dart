import 'package:fairerweb/config/app_color.dart';
import 'package:flutter/material.dart';

class ResultColorModel {
  Color backgroundColor;
  Color topTextColor;
  Color titleColor;
  Color semiTitleColor;
  Color semiTitleBoxColor;
  Color outerRoundColor;
  Color middleRoundColor;
  Color innerRoundColor;
  Color textColor;
  Color boxColor;
  String image;

  ResultColorModel(
      {required this.backgroundColor,
      required this.topTextColor,
      required this.titleColor,
      required this.semiTitleColor,
      required this.semiTitleBoxColor,
      required this.outerRoundColor,
      required this.middleRoundColor,
      required this.innerRoundColor,
      required this.textColor,
      required this.boxColor,
      required this.image});
}
