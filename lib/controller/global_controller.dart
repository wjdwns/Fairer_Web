import 'package:fairerweb/config/app_color.dart';
import 'package:fairerweb/config/app_theme.dart';
import 'package:flutter/cupertino.dart';
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
    const wordStyle = TextStyle(color: Palette.fairerBlue);
    const leftOverStyle = TextStyle(
        fontFamily: CustomTextStyle.Bold, fontSize: 20, letterSpacing: (-2), height: 1.4, color: Palette.black);
    switch (page.value) {
      case 1:
        {
          const wordToStyle = '가장 많이 하는 활동';
          final spans = _getSpans("page1_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 2:
        {
          const wordToStyle = '가장 좋아하는 공간';
          final spans = _getSpans("page2_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 3:
        {
          const wordToStyle = '가장 큰 걱정거리';
          final spans = _getSpans("page3_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 4:
        {
          const wordToStyle = '가장 중요한 것';
          final spans = _getSpans("page4_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 5:
        {
          const wordToStyle = '청소도구';
          final spans = _getSpans("page5_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 6:
        {
          const wordToStyle = '집안일';
          final spans = _getSpans("page6_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 7:
        {
          const wordToStyle = '시작하려면 무엇이 필요';
          final spans = _getSpans("page7_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 8:
        {
          const wordToStyle = '가장 싫어하는 일';
          final spans = _getSpans("page8_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 9:
        {
          const wordToStyle = '가장 잘하는 것';
          final spans = _getSpans("page9_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      case 10:
        {
          return Text(
            "page10_question".tr,
            style: leftOverStyle,
          );
        }
      case 11:
        {
          const wordToStyle = '마치고 나면';
          final spans = _getSpans("page11_question".tr, wordToStyle, wordStyle);
          return RichText(
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          );
        }
      default:
        return const Text("");
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

  List<TextSpan> _getSpans(String text, String matchWord, TextStyle style) {
    List<TextSpan> spans = [];
    int spanBoundary = 0;

    do {
      // 전체 String 에서 키워드 검색
      final startIndex = text.indexOf(matchWord, spanBoundary);

      // 전체 String 에서 해당 키워드가 더 이상 없을때 마지막 KeyWord부터 끝까지의 TextSpan 추가
      if (startIndex == -1) {
        spans.add(TextSpan(text: text.substring(spanBoundary)));
        return spans;
      }

      // 전체 String 사이에서 발견한 키워드들 사이의 text에 대한 textSpan 추가
      if (startIndex > spanBoundary) {
        spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
      }

      // 검색하고자 했던 키워드에 대한 textSpan 추가
      final endIndex = startIndex + matchWord.length;
      final spanText = text.substring(startIndex, endIndex);
      spans.add(TextSpan(text: spanText, style: style));

      // mark the boundary to start the next search from
      spanBoundary = endIndex;

      // continue until there are no more matches
    }
    //String 전체 검사
    while (spanBoundary < text.length);

    return spans;
  }

  getResult() {
    int A = 0;
    int B = 0;
    int C = 0;
    int D = 0;
    int E = 0;
    for (var entry in answer.asMap().entries) {
      var index = entry.key;
      var value = entry.value;
      switch (index + 1) {
        case 1:
          {
            switch (value) {
              case 1:
                A++;
                break;
              case 2:
                E++;
                break;
              case 3:
                B++;
                break;
              case 4:
                C++;
                break;
            }
            break;
          }
        case 2:
          {
            switch (value) {
              case 1:
                A++;
                break;
              case 2:
                D++;
                break;
              case 3:
                C++;
                break;
              case 4:
                E++;
                break;
            }
            break;
          }
        case 3:
          {
            switch (value) {
              case 1:
                A++;
                break;
              case 2:
                E++;
                break;
              case 3:
                D++;
                break;
              case 4:
                D++;
                break;
            }
            break;
          }
        case 4:
          {
            switch (value) {
              case 1:
                A++;
                break;
              case 2:
                C++;
                break;
              case 3:
                D++;
                break;
              case 4:
                E++;
                break;
            }
            break;
          }
        case 5:
          {
            switch (value) {
              case 1:
                C++;
                break;
              case 2:
                B++;
                break;
              case 3:
                E++;
                break;
              case 4:
                C++;
                break;
            }
            break;
          }
        case 6:
          {
            switch (value) {
              case 1:
                A++;
                break;
              case 2:
                B++;
                break;
              case 3:
                C++;
                break;
              case 4:
                D++;
                break;
            }
            break;
          }
        case 7:
          {
            switch (value) {
              case 1:
                B++;
                break;
              case 2:
                E++;
                break;
              case 3:
                B++;
                break;
              case 4:
                C++;
                break;
            }
            break;
          }
        case 8:
          {
            switch (value) {
              case 1:
                E++;
                break;
              case 2:
                E++;
                break;
              case 3:
                B++;
                break;
              case 4:
                C++;
                break;
            }
            break;
          }
        case 9:
          {
            switch (value) {
              case 1:
                A++;
                break;
              case 2:
                E++;
                break;
              case 3:
                B++;
                break;
              case 4:
                E++;
                break;
            }
            break;
          }
        case 10:
          {
            switch (value) {
              case 1:
                B++;
                break;
              case 2:
                E++;
                break;
              case 3:
                E++;
                break;
              case 4:
                C++;
                break;
            }
            break;
          }
        case 11:
          {
            switch (value) {
              case 1:
                A++;
                break;
              case 2:
                C++;
                break;
              case 3:
                D++;
                break;
              case 4:
                D++;
                break;
            }
            break;
          }
        default:
          break;
      }
    }
    int maxCount = 0;
    int maxIndex = 0;

    if (A > maxCount) {
      maxCount = A;
      maxIndex = 0;
    }
    if (B > maxCount) {
      maxCount = B;
      maxIndex = 1;
    }
    if (C > maxCount) {
      maxCount = C;
      maxIndex = 2;
    }
    if (D > maxCount) {
      maxCount = D;
      maxIndex = 3;
    }
    if (E > maxCount) {
      maxCount = E;
      maxIndex = 4;
    }

    print(maxCount);
    print(maxIndex);
    return maxIndex;
  }

  getQuestionImage(int num) {
    switch (page.value) {
      case 1:
        {
          switch (num) {
            case 1:
              return "assets/icons/question1_a.svg";
            case 2:
              return "assets/icons/question1_b.svg";
            case 3:
              return "assets/icons/question1_c.svg";
            case 4:
              return "assets/icons/question1_d.svg";
          }
        }

      case 2:
        {
          switch (num) {
            case 1:
              return "assets/icons/question2_a.svg";
            case 2:
              return "assets/icons/question2_b.svg";
            case 3:
              return "assets/icons/question2_c.svg";
            case 4:
              return "assets/icons/question2_d.svg";
          }
        }
      case 5:
        {
          switch (num) {
            case 1:
              return "assets/icons/question5_a.svg";
            case 2:
              return "assets/icons/question5_b.svg";
            case 3:
              return "assets/icons/question5_c.svg";
            case 4:
              return "assets/icons/question5_d.svg";
          }
        }
      case 9:
        {
          switch (num) {
            case 1:
              return "assets/icons/question9_a.svg";
            case 2:
              return "assets/icons/question9_b.svg";
            case 3:
              return "assets/icons/question9_c.svg";
            case 4:
              return "assets/icons/question9_d.svg";
          }
        }
      case 10:
        {
          switch (num) {
            case 1:
              return "assets/icons/question10_a.svg";
            case 2:
              return "assets/icons/question10_b.svg";
            case 3:
              return "assets/icons/question10_c.svg";
            case 4:
              return "assets/icons/question10_d.svg";
          }
        }
    }
  }
}
