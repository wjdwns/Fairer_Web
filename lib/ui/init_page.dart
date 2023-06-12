import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:fairerweb/ui/question_page.dart';
import 'package:fairerweb/ui/widgets/init_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.fairerBlue,
        bottomNavigationBar: Container(
            color: Palette.fairerBlue,
            padding: EdgeInsets.all(24),
            child: GestureDetector(onTap: () => Get.to(() => QuestionPage()), child: InitButton())),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: 4),
              child: SvgPicture.asset(
                "assets/icons/ic_fairer.svg",
              ),
            ),
            Column(
              children: [
                Flexible(
                  flex: 5,
                  child: Container(),
                ),
                Flexible(
                  flex: 18,
                  child: Opacity(
                      opacity: 0.8,
                      child: SvgPicture.asset(
                        "assets/icons/ic_init_background.svg",
                        width: Get.width,
                      )),
                ),
                Flexible(
                  flex: 6,
                  child: Container(),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      "init_title".tr,
                      style: TextStyle(
                          fontFamily: CustomTextStyle.nanum,
                          fontSize: 44,
                          height: 1.4,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 10
                            ..color = Palette.white),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "init_title".tr,
                      style: const TextStyle(
                        fontFamily: CustomTextStyle.nanum,
                        fontSize: 44,
                        height: 1.4,
                        color: Palette.fairerBlue,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  "init_question".tr,
                  style: const TextStyle(fontSize: 18, color: Palette.white),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
