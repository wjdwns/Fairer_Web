import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_color.dart';

class EndBottonButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: InkWell(
                onTap: () {},
                child: Container(
                  color: Palette.fairerBlue,
                  height: 44,
                  child: Center(
                    child: Text(
                      'end_page_restart'.tr,
                      style: const TextStyle(fontSize: 16, color: Palette.white),
                    ),
                  ),
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: InkWell(
                onTap: () {},
                child: Container(
                  color: Palette.fairerBlue,
                  height: 44,
                  child: Center(
                    child: Text(
                      'end_page_share'.tr,
                      style: const TextStyle(fontSize: 16, color: Palette.white),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
