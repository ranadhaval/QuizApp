import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quiz/pages/Quiz/Model/question_model.dart';
import 'package:quiz/pages/Quiz/Model/quiz_model.dart';
import 'package:quiz/util/resources.dart';

class QuizController extends GetxController {
  List<QuizModel> myquiz = [];
  int mainindex = 0;
  @override
  void onInit() async {
    type = await data["type"];

    getData();
    super.onInit();
  }

  double height = 0;
  String type = '';
  var data = Get.arguments;
  double width = 0;
  List<Question> questionList = [];
  List<Data> data_model = [];
  double progressRate = 0;
  int typeInt = 1000;
  bool isLoading = true;
  QuestionModel? questionModel;
  double incrementLength = 0;
  void getData() async {
    String data = await rootBundle.loadString(question);

    questionModel = QuestionModel.fromJson(jsonDecode(data));
    if (questionModel!.success == true && questionModel != null) {
      isLoading = false;
      questionList.addAll(questionModel!.question!);
      data_model.addAll(questionModel!.question![0].data!);

      update();
    }

    if (type == "Game Quiz") {
      isLoading = false;

      typeInt = 0;
    } else if (type == "Sports Quiz") {
      isLoading = false;

      typeInt = 1;
    } else {
      isLoading = false;

      typeInt = 2;
    }
    update();
  }
}
