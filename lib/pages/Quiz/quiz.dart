import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/pages/Quiz/quiz_controller.dart';
import 'package:quiz/routes/app_routes.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';
import 'package:quiz/widgets/BottomButton.dart';
import 'package:quiz/widgets/EvaluationProgressIndicator.dart';
import 'package:quiz/widgets/custom_appbar.dart';
import 'package:quiz/widgets/custom_text.dart';
import 'package:quiz/widgets/progress_bar.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final quizController = Get.put(QuizController());
  bool lastPage = true;

  @override
  Widget build(BuildContext context) {
    // final datalist =
    //     quizController.questionModel!.question![quizController.typeInt].data!;
    return GetBuilder(
        init: quizController,
        builder: (con) {
          quizController.height = MediaQuery.of(context).size.height;
          quizController.width = MediaQuery.of(context).size.width;
          quizController.update();
          return Scaffold(
            appBar: appBar(title: Strings.quizes),
            body: Stack(children: [
              quizController.isLoading
                  ? const ProgressBar(isLoader: true)
                  : Container(
                      color: AppTheme.colorWhite,
                      height: quizController.height,
                      width: quizController.width,
                      child: PageView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: pageController,
                          onPageChanged: (index) {
                            setState(() {
                              index_ = index;
                              if (index >=
                                      quizController
                                          .questionModel!
                                          .question![quizController.typeInt]
                                          .data!
                                          .length &&
                                  index != 0) {
                                lastPage = Constant.isTrue;
                              } else {
                                lastPage = Constant.isFalse;
                              }
                            });
                          },
                          itemCount: quizController.questionModel!
                              .question![quizController.typeInt].data!.length,
                          itemBuilder: (context, index2) {
                            quizController.mainindex = index2;

                            quizController.incrementLength = 100 /
                                quizController
                                    .questionModel!
                                    .question![quizController.typeInt]
                                    .data!
                                    .length;
                            final data = quizController.questionModel!
                                .question![quizController.typeInt].data;
                            return Column(
                              children: [
                                Container(
                                    width: quizController.width,
                                    padding: const EdgeInsets.all(25),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(data![index2].title.toString()),
                                      ],
                                    )),
                                EvaluationProgressIndicator(
                                  rf: 0.5,
                                  height: quizController.height,
                                  value: quizController.progressRate,
                                  endColor: AppTheme.colorBlack,
                                  startColor: AppTheme.colorProgress,
                                ),
                                SizedBox(
                                    height: 250,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            Checkbox(
                                                activeColor:
                                                    AppTheme.bgGradiontend,
                                                value: data[index2]
                                                        .answers![index]
                                                        .id ==
                                                    id,
                                                onChanged: (d) {
                                                  setState(() {
                                                    id = data[index2]
                                                        .answers![index]
                                                        .id!;
                                                  });
                                                }),
                                            Text(data[index2]
                                                .answers![index]
                                                .answer
                                                .toString()),
                                          ],
                                        );
                                      },
                                      itemCount: data[index2].answers!.length,
                                    ))
                              ],
                            );
                          })),
            ]),
            bottomSheet: InkWell(
              onTap: () {
                if (id != 0) {
                  if (index_ >=
                      quizController.questionModel!
                              .question![quizController.typeInt].data!.length -
                          1) {
                    Get.offNamed(AppRoute.RESULT, arguments: {
                      "questionmodel": quizController.questionModel!
                          .question![quizController.typeInt].data!
                    });
                  } else {
                    pageController.nextPage(
                        duration: const Duration(microseconds: 200),
                        curve: Curves.easeIn);
                  }

                  quizController.progressRate += quizController.incrementLength;
                  quizController.update();
                  if (quizController.progressRate > 100) {
                    quizController.progressRate = 100;
                    quizController.update();
                  }
                  // if (datalist[quizController.mainindex].answerId == id) {
                  //   print("i get");
                  // }
                  id = 0;
                } else {
                  Get.snackbar("Error", "please choose any option",
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: AppTheme.colorRed,
                      colorText: AppTheme.colorWhite);
                }
              },
              child: BottomButton(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: CustomText(
                  title: "Save & Next",
                  color: AppTheme.colorWhite,
                )),
              )),
            ),
          );
        });
  }

  PageController pageController = PageController();
  @override
  void initState() {
    pageController = PageController(initialPage: index_);

    super.initState();
  }

  int index_ = 0;
  int id = 0;
  List<String> albhabet = ['A', 'B', 'C', 'D'];
}
