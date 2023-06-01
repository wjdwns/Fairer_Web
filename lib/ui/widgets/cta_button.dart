import 'package:fairerweb/config/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CTAButton extends StatelessWidget {
  final bool isEnable;

  const CTAButton({super.key, required this.isEnable});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: isEnable ? Palette.fairerBlue : Palette.mtGrey200,
      width: Get.width,
      height: 56,
      child: Center(
        child: Text(
          'cta_button'.tr,
          style: const TextStyle(fontSize: 16, color: Palette.white),
        ),
      ),
    );
  }
}
