import 'package:flutter/material.dart';

class ResultModel {
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
  String titleText;
  String semiTitleText;
  String text1;
  String text2;
  String text1Bold;
  String text2Bold;

  ResultModel(
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
      required this.image,
      required this.titleText,
      required this.semiTitleText,
      required this.text1,
      required this.text2,
      required this.text1Bold,
      required this.text2Bold});
}
