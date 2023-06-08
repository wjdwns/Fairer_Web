import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:fairerweb/ui/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CTAButton extends StatelessWidget {
  final controller = Get.find<GlobalController>();
  final bool isEnable;

  CTAButton({super.key, required this.isEnable});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (controller.page.value == 11) {
          Get.to(() => ResultPage());
        } else {
          controller.page.value++;
        }
      },
      child: Container(
        color: isEnable ? Palette.fairerBlue : Palette.mtGrey200,
        width: Get.width,
        height: 56,
        child: Center(
          child: Text(
            'cta_button'.tr,
            style: const TextStyle(fontSize: 16, color: Palette.white),
          ),
        ),
      ),
    );
  }
}
