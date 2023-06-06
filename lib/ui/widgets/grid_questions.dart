import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GridQuestions extends StatelessWidget {
  final controller = Get.find<GlobalController>();
  final int page;

  GridQuestions({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 177,
              width: 152,
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
              color: Palette.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "answer_a".tr,
                    style: CustomTextStyle.Body1,
                  ),
                  Expanded(
                      child: Center(
                          child: SvgPicture.asset("icons/question1_a.svg"))),
                  Text(
                    controller.getAnswerA(),
                    style: CustomTextStyle.Title1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 177,
              width: 152,
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
              color: Palette.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "answer_b".tr,
                    style: CustomTextStyle.Body1,
                  ),
                  Expanded(
                      child: Center(
                          child: SvgPicture.asset("icons/question1_b.svg"))),
                  Text(
                    controller.getAnswerB(),
                    style: CustomTextStyle.Title1,
                  ),
                ],
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
            Container(
              height: 177,
              width: 152,
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
              color: Palette.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "answer_c".tr,
                    style: CustomTextStyle.Body1,
                  ),
                  Expanded(
                      child: Center(
                          child: SvgPicture.asset("icons/question1_c.svg"))),
                  Text(
                    controller.getAnswerC(),
                    style: CustomTextStyle.Title1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 177,
              width: 152,
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 27),
              color: Palette.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "answer_d".tr,
                    style: CustomTextStyle.Body1,
                  ),
                  Expanded(
                      child: Center(
                          child: SvgPicture.asset("icons/question1_d.svg"))),
                  Text(
                    controller.getAnswerD(),
                    style: CustomTextStyle.Title1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
