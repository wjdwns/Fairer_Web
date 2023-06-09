import 'package:fairerweb/config/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Palette.white, borderRadius: BorderRadius.circular(8)),
      width: Get.width,
      height: 56,
      child: Center(
        child: Text(
          'cta_button'.tr,
          style: const TextStyle(fontSize: 16, color: Palette.fairerBlue),
        ),
      ),
    );
  }
}
