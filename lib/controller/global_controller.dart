import 'package:get/get.dart';

class GlobalController extends GetxController {
  final page = 1.obs;
  final answer = <int>[].obs;

  @override
  onInit() {
    super.onInit();
    answer.addAll(List.generate(11, (index) => 0));
  }

  getQuestionTitle() {
    switch (page.value) {
      case 1:
        return "page1_question".tr;
      case 2:
        return "page2_question".tr;
      case 3:
        return "page3_question".tr;
      case 4:
        return "page4_question".tr;
      case 5:
        return "page5_question".tr;
      case 6:
        return "page6_question".tr;
      case 7:
        return "page7_question".tr;
      case 8:
        return "page8_question".tr;
      case 9:
        return "page9_question".tr;
      case 10:
        return "page10_question".tr;
      case 11:
        return "page11_question".tr;
      default:
        return "";
    }
  }

  getAnswerA() {
    switch (page.value) {
      case 1:
        return "page1_answer1".tr;
      case 2:
        return "page2_answer1".tr;
      case 3:
        return "page3_answer1".tr;
      case 4:
        return "page4_answer1".tr;
      case 5:
        return "page5_answer1".tr;
      case 6:
        return "page6_answer1".tr;
      case 7:
        return "page7_answer1".tr;
      case 8:
        return "page8_answer1".tr;
      case 9:
        return "page9_answer1".tr;
      case 10:
        return "page10_answer1".tr;
      case 11:
        return "page11_answer1".tr;
      default:
        return "";
    }
  }

  getAnswerB() {
    switch (page.value) {
      case 1:
        return "page1_answer2".tr;
      case 2:
        return "page2_answer2".tr;
      case 3:
        return "page3_answer2".tr;
      case 4:
        return "page4_answer2".tr;
      case 5:
        return "page5_answer2".tr;
      case 6:
        return "page6_answer2".tr;
      case 7:
        return "page7_answer2".tr;
      case 8:
        return "page8_answer2".tr;
      case 9:
        return "page9_answer2".tr;
      case 10:
        return "page10_answer2".tr;
      case 11:
        return "page11_answer2".tr;
      default:
        return "";
    }
  }

  getAnswerC() {
    switch (page.value) {
      case 1:
        return "page1_answer3".tr;
      case 2:
        return "page2_answer3".tr;
      case 3:
        return "page3_answer3".tr;
      case 4:
        return "page4_answer3".tr;
      case 5:
        return "page5_answer3".tr;
      case 6:
        return "page6_answer3".tr;
      case 7:
        return "page7_answer3".tr;
      case 8:
        return "page8_answer3".tr;
      case 9:
        return "page9_answer3".tr;
      case 10:
        return "page10_answer3".tr;
      case 11:
        return "page11_answer3".tr;
      default:
        return "";
    }
  }

  getAnswerD() {
    switch (page.value) {
      case 1:
        return "page1_answer4".tr;
      case 2:
        return "page2_answer4".tr;
      case 3:
        return "page3_answer4".tr;
      case 4:
        return "page4_answer4".tr;
      case 5:
        return "page5_answer4".tr;
      case 6:
        return "page6_answer4".tr;
      case 7:
        return "page7_answer4".tr;
      case 8:
        return "page8_answer4".tr;
      case 9:
        return "page9_answer4".tr;
      case 10:
        return "page10_answer4".tr;
      case 11:
        return "page11_answer4".tr;
      default:
        return "";
    }
  }
}
