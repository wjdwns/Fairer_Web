import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerticalQuestions extends StatelessWidget {
  final controller = Get.find<GlobalController>();

  VerticalQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            InkWell(
              onTap: () {
                controller.answer[controller.page.value - 1] = 1;
                controller.answer.refresh();
              },
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(4),
                    border: controller.answer[controller.page.value - 1] == 1
                        ? Border.all(color: Palette.fairerBlue)
                        : null),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "answer_a".tr,
                      style: CustomTextStyle.Body1,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      controller.getAnswerA(),
                      style: CustomTextStyle.Title1,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                controller.answer[controller.page.value - 1] = 2;
                controller.answer.refresh();
              },
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(4),
                    border: controller.answer[controller.page.value - 1] == 2
                        ? Border.all(color: Palette.fairerBlue)
                        : null),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "answer_b".tr,
                      style: CustomTextStyle.Body1,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      controller.getAnswerB(),
                      style: CustomTextStyle.Title1,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                controller.answer[controller.page.value - 1] = 3;
                controller.answer.refresh();
              },
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(4),
                    border: controller.answer[controller.page.value - 1] == 3
                        ? Border.all(color: Palette.fairerBlue)
                        : null),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "answer_c".tr,
                      style: CustomTextStyle.Body1,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      controller.getAnswerC(),
                      style: CustomTextStyle.Title1,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                controller.answer[controller.page.value - 1] = 4;
                controller.answer.refresh();
              },
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(4),
                    border: controller.answer[controller.page.value - 1] == 4
                        ? Border.all(color: Palette.fairerBlue)
                        : null),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "answer_d".tr,
                      style: CustomTextStyle.Body1,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      controller.getAnswerD(),
                      style: CustomTextStyle.Title1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
