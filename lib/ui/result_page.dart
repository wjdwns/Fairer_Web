import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:fairerweb/model/result_color_model.dart';
import 'package:fairerweb/ui/widgets/end_bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  final controller = Get.find<GlobalController>();
  @override
  Widget build(BuildContext context) {
    final result = controller.getResult();
    final ResultModel resultColorModel = setResultColor(result);
    return Scaffold(
      backgroundColor: resultColorModel.backgroundColor,
      bottomNavigationBar: Container(
        color: resultColorModel.backgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: EndBottomButton(
          colorValue: result == 1 || result == 3 ? true : false,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(33, 34, 33, 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "end_page_my_type".tr,
              style: TextStyle(fontFamily: CustomTextStyle.Regular, fontSize: 16, color: resultColorModel.topTextColor),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              resultColorModel.titleText,
              style: TextStyle(fontFamily: CustomTextStyle.SemiBold, color: resultColorModel.titleColor, fontSize: 36),
            ),
            const SizedBox(
              height: 11,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration:
                  BoxDecoration(color: resultColorModel.semiTitleBoxColor, borderRadius: BorderRadius.circular(33)),
              child: Text(
                resultColorModel.semiTitleText,
                style: TextStyle(
                    fontFamily: CustomTextStyle.SemiBold, color: resultColorModel.semiTitleColor, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              width: 242,
              height: 242,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CustomPaint(
                      size: const Size(242, 242), // 원의 크기
                      painter: CirclePainter(resultColorModel.outerRoundColor), // 원을 그리는 커스텀 페인터
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomPaint(
                      size: const Size(196, 196), // 원의 크기
                      painter: CirclePainter(resultColorModel.middleRoundColor), // 원을 그리는 커스텀 페인터
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomPaint(
                      size: const Size(150, 150), // 원의 크기
                      painter: CirclePainter(resultColorModel.innerRoundColor), // 원을 그리는 커스텀 페인터
                    ),
                  ),
                  Align(alignment: Alignment.center, child: SvgPicture.asset(resultColorModel.image)),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(color: resultColorModel.boxColor, borderRadius: BorderRadius.circular(24)),
              child: Column(
                children: [
                  controller.getBoldTextSpan(
                      resultColorModel.text1, resultColorModel.text1Bold, resultColorModel.textColor),
                  const SizedBox(
                    height: 12,
                  ),
                  controller.getBoldTextSpan(
                      resultColorModel.text2, resultColorModel.text2Bold, resultColorModel.textColor),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(color: Palette.white, borderRadius: BorderRadius.circular(24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/icons/ic_result_text.svg"),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "end_page_fairer_text1".tr,
                    style:
                        const TextStyle(fontFamily: CustomTextStyle.Regular, fontSize: 12, color: Palette.mtGrey1000),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        "end_page_fairer_text2".tr,
                        style: const TextStyle(
                            fontFamily: CustomTextStyle.SemiBold, fontSize: 14, color: Color(0xFF1F1F1F)),
                      ),
                      SvgPicture.asset("assets/icons/ic_result_fairer.svg"),
                      Text(
                        "end_page_fairer_text3".tr,
                        style: const TextStyle(
                            fontFamily: CustomTextStyle.SemiBold, fontSize: 14, color: Color(0xFF1F1F1F)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  setResultColor(int result) {
    if (result == 1) {
      return ResultModel(
          backgroundColor: Palette.result1BackgroundColor,
          topTextColor: Palette.result1TopTextColor,
          titleColor: Palette.result1TitleColor,
          semiTitleColor: Palette.result1SemiTitleColor,
          semiTitleBoxColor: Palette.result1SemiTitleBoxColor,
          outerRoundColor: Palette.result1OuterRoundColor,
          middleRoundColor: Palette.result1MiddleRoundColor,
          innerRoundColor: Palette.result1InnerRoundColor,
          textColor: Palette.result1TextColor,
          boxColor: Palette.result1BoxColor,
          image: 'assets/icons/ic_result1.svg',
          titleText: 'end_page_type_title1'.tr,
          semiTitleText: 'end_page_type_semi_title1'.tr,
          text1: 'result1_text1'.tr,
          text2: 'result1_text2'.tr,
          text1Bold: 'result1_text1_bold'.tr,
          text2Bold: 'result1_text2_bold'.tr);
    } else if (result == 2) {
      return ResultModel(
          backgroundColor: Palette.result2BackgroundColor,
          topTextColor: Palette.result2TopTextColor,
          titleColor: Palette.result2TitleColor,
          semiTitleColor: Palette.result2SemiTitleColor,
          semiTitleBoxColor: Palette.result2SemiTitleBoxColor,
          outerRoundColor: Palette.result2OuterRoundColor,
          middleRoundColor: Palette.result2MiddleRoundColor,
          innerRoundColor: Palette.result2InnerRoundColor,
          textColor: Palette.result2TextColor,
          boxColor: Palette.result2BoxColor,
          image: 'assets/icons/ic_result2.svg',
          titleText: 'end_page_type_title2'.tr,
          semiTitleText: 'end_page_type_semi_title2'.tr,
          text1: 'result2_text1'.tr,
          text2: 'result2_text2'.tr,
          text1Bold: 'result2_text1_bold'.tr,
          text2Bold: 'result2_text2_bold'.tr);
    } else if (result == 3) {
      return ResultModel(
          backgroundColor: Palette.result3BackgroundColor,
          topTextColor: Palette.result3TopTextColor,
          titleColor: Palette.result3TitleColor,
          semiTitleColor: Palette.result3SemiTitleColor,
          semiTitleBoxColor: Palette.result3SemiTitleBoxColor,
          outerRoundColor: Palette.result3OuterRoundColor,
          middleRoundColor: Palette.result3MiddleRoundColor,
          innerRoundColor: Palette.result3InnerRoundColor,
          textColor: Palette.result3TextColor,
          boxColor: Palette.result3BoxColor,
          image: 'assets/icons/ic_result3.svg',
          titleText: 'end_page_type_title3'.tr,
          semiTitleText: 'end_page_type_semi_title3'.tr,
          text1: 'result3_text1'.tr,
          text2: 'result3_text2'.tr,
          text1Bold: 'result3_text1_bold'.tr,
          text2Bold: 'result3_text2_bold'.tr);
    } else if (result == 4) {
      return ResultModel(
          backgroundColor: Palette.result4BackgroundColor,
          topTextColor: Palette.result4TopTextColor,
          titleColor: Palette.result4TitleColor,
          semiTitleColor: Palette.result4SemiTitleColor,
          semiTitleBoxColor: Palette.result4SemiTitleBoxColor,
          outerRoundColor: Palette.result4OuterRoundColor,
          middleRoundColor: Palette.result4MiddleRoundColor,
          innerRoundColor: Palette.result4InnerRoundColor,
          textColor: Palette.result4TextColor,
          boxColor: Palette.result4BoxColor,
          image: 'assets/icons/ic_result4.svg',
          titleText: 'end_page_type_title4'.tr,
          semiTitleText: 'end_page_type_semi_title4'.tr,
          text1: 'result4_text1'.tr,
          text2: 'result4_text2'.tr,
          text1Bold: 'result4_text1_bold'.tr,
          text2Bold: 'result4_text2_bold'.tr);
    } else {
      return ResultModel(
          backgroundColor: Palette.result5BackgroundColor,
          topTextColor: Palette.result5TopTextColor,
          titleColor: Palette.result5TitleColor,
          semiTitleColor: Palette.result5SemiTitleColor,
          semiTitleBoxColor: Palette.result5SemiTitleBoxColor,
          outerRoundColor: Palette.result5OuterRoundColor,
          middleRoundColor: Palette.result5MiddleRoundColor,
          innerRoundColor: Palette.result5InnerRoundColor,
          textColor: Palette.result5TextColor,
          boxColor: Palette.result5BoxColor,
          image: 'assets/icons/ic_result5.svg',
          titleText: 'end_page_type_title5'.tr,
          semiTitleText: 'end_page_type_semi_title5'.tr,
          text1: 'result5_text5'.tr,
          text2: 'result5_text2'.tr,
          text1Bold: 'result5_text1_bold'.tr,
          text2Bold: 'result5_text2_bold'.tr);
    }
  }
}

class CirclePainter extends CustomPainter {
  final Color color;

  CirclePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2;

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(centerX, centerY), radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
