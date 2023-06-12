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
    const leftOverStyle = CustomTextStyle.H2;
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
        print(text.substring(spanBoundary, startIndex));
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
    final counts = <int, int>{};
    for (var value in answer) {
      if (counts.containsKey(value)) {
        counts[value] = counts[value]! + 1;
      } else {
        counts[value] = 1;
      }
    }

    int maxCount = 0;
    int mostFrequentValue = 0;

    counts.forEach((value, count) {
      if (count > maxCount) {
        maxCount = count;
        mostFrequentValue = value;
      }
    });
    print(mostFrequentValue);
    return mostFrequentValue;
  }
}
