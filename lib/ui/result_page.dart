import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/controller/global_controller.dart';
import 'package:fairerweb/ui/widgets/end_bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  final controller = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    final result = controller.getResult();
    return Scaffold(
      backgroundColor: Palette.result1BackgroundColor,
      bottomSheet: Container(
        color: Palette.result1BackgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: EndBottonButton(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(33, 34, 33, 87),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "end_page_my_type".tr,
              style:
                  const TextStyle(fontFamily: CustomTextStyle.Regular, fontSize: 16, color: Palette.result1TextColor),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "end_page_type_title1".tr,
              style:
                  const TextStyle(fontFamily: CustomTextStyle.SemiBold, color: Palette.resultTitleColor, fontSize: 36),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(color: Palette.result1BoxColor, borderRadius: BorderRadius.circular(33)),
              child: Text(
                "end_page_type_semi_title1".tr,
                style: const TextStyle(fontFamily: CustomTextStyle.SemiBold, color: Palette.mtGrey800, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: 242,
              height: 242,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(242, 242), // 원의 크기
                    painter: CirclePainter(Palette.result1BoxColor), // 원을 그리는 커스텀 페인터
                  ),
                  CustomPaint(
                    size: Size(242, 242), // 원의 크기
                    painter: CirclePainter(Palette.result1BoxColor), // 원을 그리는 커스텀 페인터
                  ),
                  Align(child: SvgPicture.asset("assets/icons/ic_result1.svg")),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(color: Palette.result1BoxColor, borderRadius: BorderRadius.circular(24)),
              child: Column(
                children: [
                  Text("이 유형의 사람들은 요리를 좋아하고, 무엇을 요리할지 매일 생각하는 것이 일상입니다."),
                  SizedBox(
                    height: 12,
                  ),
                  Text("요리 장비와 레시피에 대한 지식을 가지고 있으며, 가족이나 친구들과 식사를 즐기는 것을 좋아합니다."),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(color: Palette.white, borderRadius: BorderRadius.circular(24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/icons/ic_result_text.svg"),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "집안이 계획부터 분담까지 페어러와 함께하세요",
                    style: TextStyle(fontFamily: CustomTextStyle.Regular, fontSize: 12, color: Palette.mtGrey1000),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text("구글스토어에"),
                      SvgPicture.asset("assets/icons/ic_result_fairer.svg"),
                      Text("를 검색해보세요!")
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
