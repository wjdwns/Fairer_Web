import 'package:fairerweb/config/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProgressBar extends StatelessWidget {
  final int flexValue;

  ProgressBar({super.key, required this.flexValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      width: Get.width,
      height: 6,
      child: Row(
        children: [
          Flexible(
              flex: flexValue,
              child: Container(
                color: Palette.fairerBlue,
              )),
          Flexible(
              flex: 11 - flexValue,
              child: Container(
                color: Palette.white,
              )),
        ],
      ),
    );
  }
}
