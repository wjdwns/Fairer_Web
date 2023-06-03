import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/ui/widgets/cta_button.dart';
import 'package:fairerweb/ui/widgets/init_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
          color: Palette.fairerBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    "icons/ic_fairer.svg",
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("init_title".tr,style: const TextStyle(fontSize: 44,color: Palette.white),textAlign: TextAlign.center,),
                      Text("init_question".tr,style: const TextStyle(fontSize: 18,color: Palette.white),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: InitButton()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
