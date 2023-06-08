import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:fairerweb/ui/widgets/cta_button.dart';
import 'package:fairerweb/ui/widgets/grid_questions.dart';
import 'package:fairerweb/ui/widgets/progress_bar.dart';
import 'package:fairerweb/ui/widgets/vertical_qeustion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class QuestionPage extends GetView<GlobalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.normal,
      bottomSheet: Container(
        color: Palette.normal,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Obx(
          () => CTAButton(isEnable: controller.answer[controller.page.value - 1] != 0),
        ),
      ),
      body: Obx(() => Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/icons/ic_back.svg", width: 24, height: 24),
                const SizedBox(
                  height: 28,
                ),
                ProgressBar(flexValue: controller.page.value),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "question".tr,
                      style: CustomTextStyle.H1,
                    ),
                    Text(
                      "${controller.page.value}/11",
                      style: CustomTextStyle.Caption1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                controller.getQuestionTitle(),
                const SizedBox(
                  height: 52,
                ),
                controller.page.value == 1 ||
                        controller.page.value == 2 ||
                        controller.page.value == 5 ||
                        controller.page.value == 9 ||
                        controller.page.value == 10
                    ? Center(child: GridQuestions())
                    : VerticalQuestions()
              ],
            ),
          )),
    );
  }
}
