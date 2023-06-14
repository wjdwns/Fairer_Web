import 'package:fairerweb/binding/init_binding.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:fairerweb/ui/init_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_color.dart';

class EndBottonButton extends StatelessWidget {
  final controller = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: InkWell(
                onTap: () async {
                  await Get.deleteAll();
                  await Get.offAll(() => InitPage(), binding: InitBinding());
                },
                child: Container(
                  decoration: BoxDecoration(color: Palette.fairerBlue, borderRadius: BorderRadius.circular(8)),
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
                  decoration: BoxDecoration(color: Palette.fairerBlue, borderRadius: BorderRadius.circular(8)),
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
