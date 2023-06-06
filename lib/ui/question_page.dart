import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:fairerweb/ui/widgets/cta_button.dart';
import 'package:fairerweb/ui/widgets/grid_questions.dart';
import 'package:fairerweb/ui/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class QuestionPage extends GetView<GlobalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.normal,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("icons/ic_back.svg", width: 24, height: 24),
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
            Text(
              controller.getQuestionTitle(),
              style: CustomTextStyle.H2,
            ),
            const SizedBox(
              height: 52,
            ),
            SizedBox(
                width: Get.width,
                child: Center(
                    child: GridQuestions(
                  page: controller.page.value,
                ))),
            const Spacer(),
            CTAButton(isEnable: false)
          ],
        ),
      ),
    );
  }
}
