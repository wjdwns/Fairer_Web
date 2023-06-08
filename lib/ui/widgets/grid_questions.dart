import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GridQuestions extends StatelessWidget {
  final controller = Get.find<GlobalController>();

  GridQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    controller.answer[controller.page.value - 1] = 1;
                    controller.answer.refresh();
                  },
                  child: Container(
                    height: 177,
                    width: 152,
                    decoration: BoxDecoration(
                        color: Palette.white,
                        borderRadius: BorderRadius.circular(4),
                        border: controller.answer[controller.page.value - 1] == 1
                            ? Border.all(color: Palette.fairerBlue)
                            : null),
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "answer_a".tr,
                          style: CustomTextStyle.Body1,
                        ),
                        Expanded(child: Center(child: SvgPicture.asset("assets/icons/question1_a.svg"))),
                        Text(
                          controller.getAnswerA(),
                          style: CustomTextStyle.Title1,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    controller.answer[controller.page.value - 1] = 2;
                    controller.answer.refresh();
                  },
                  child: Container(
                    height: 177,
                    width: 152,
                    decoration: BoxDecoration(
                        color: Palette.white,
                        borderRadius: BorderRadius.circular(4),
                        border: controller.answer[controller.page.value - 1] == 2
                            ? Border.all(color: Palette.fairerBlue)
                            : null),
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "answer_b".tr,
                          style: CustomTextStyle.Body1,
                        ),
                        Expanded(child: Center(child: SvgPicture.asset("assets/icons/question1_b.svg"))),
                        Text(
                          controller.getAnswerB(),
                          style: CustomTextStyle.Title1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    controller.answer[controller.page.value - 1] = 3;
                    controller.answer.refresh();
                  },
                  child: Container(
                    height: 177,
                    width: 152,
                    decoration: BoxDecoration(
                        color: Palette.white,
                        borderRadius: BorderRadius.circular(4),
                        border: controller.answer[controller.page.value - 1] == 3
                            ? Border.all(color: Palette.fairerBlue)
                            : null),
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "answer_c".tr,
                          style: CustomTextStyle.Body1,
                        ),
                        Expanded(child: Center(child: SvgPicture.asset("assets/icons/question1_c.svg"))),
                        Text(
                          controller.getAnswerC(),
                          style: CustomTextStyle.Title1,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    controller.answer[controller.page.value - 1] = 4;
                    controller.answer.refresh();
                  },
                  child: Container(
                    height: 177,
                    width: 152,
                    decoration: BoxDecoration(
                        color: Palette.white,
                        borderRadius: BorderRadius.circular(4),
                        border: controller.answer[controller.page.value - 1] == 4
                            ? Border.all(color: Palette.fairerBlue)
                            : null),
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "answer_d".tr,
                          style: CustomTextStyle.Body1,
                        ),
                        Expanded(child: Center(child: SvgPicture.asset("assets/icons/question1_d.svg"))),
                        Text(
                          controller.getAnswerD(),
                          style: CustomTextStyle.Title1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
