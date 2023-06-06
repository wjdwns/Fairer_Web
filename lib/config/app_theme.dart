import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData();

class CustomTextStyle {
  static const Bold = 'PretendardBold';
  static const Regular = 'PretendardRegular';
  static const Medium = 'PretendardMedium';
  static const SemiBold = 'PretendardSemiBold';



  static const H1 = TextStyle(fontFamily: Bold,fontSize: 24,letterSpacing: (-2),height: 1.4);
  static const H2 = TextStyle(fontFamily: Bold,fontSize: 20,letterSpacing: (-2),height: 1.4);
  static const H3 = TextStyle(fontFamily: Medium,fontSize: 20,letterSpacing: (-2),height: 1.4);
  static const Title1 = TextStyle(fontFamily: SemiBold,fontSize: 16,height: 1.4);
  static const Title2 = TextStyle(fontFamily: SemiBold,fontSize: 14,height: 1.4);
  static const Body1 = TextStyle(fontFamily: Regular,fontSize: 16,height: 1.6);
  static const Body2 = TextStyle(fontFamily: Regular,fontSize: 14,height: 1.6);
  static const Caption1 = TextStyle(fontFamily: Regular,fontSize: 12,height: 1.6);
  static const Caption2 = TextStyle(fontFamily: Regular,fontSize: 10,height: 1.6);


}