import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/pages/Leaderboard/leaderboard_controller.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';
import 'package:quiz/util/resources.dart';
import 'package:quiz/widgets/custom_appbar.dart';
import 'package:quiz/widgets/progress_bar.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  double height = 0;
  double width = 0;
  final leaderBoardController = Get.put(LeaderBoardController());
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return GetBuilder(
        init: leaderBoardController,
        builder: (con) {
          return Scaffold(
            appBar: appBar(
              title: Strings.leaderBoard,
            ),
            body: SizedBox(
              height: height,
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Constant.leaderBoardImagePadding,
                        bottom: Constant.leaderBoardImagePadding),
                    child: Container(
                      height: height / Constant.leaderBoardImageHeight,
                      width: width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(trophy))),
                    ),
                  ),
                  leaderBoardPanel(
                      no: Strings.no,
                      username: Strings.username,
                      scoreOutOf33: Strings.scoreOutOf33,
                      isMainRow: Constant.isTrue),
                  Expanded(
                    child: Stack(children: [
                      leaderBoardController.dataList.isEmpty
                          ? const ProgressBar(isLoader: true)
                          : ListView.builder(
                              itemCount: leaderBoardController.dataList.length,
                              itemBuilder: (context, index) {
                                return leaderBoardPanel(
                                    no: "${index + 1}",
                                    username:
                                        '${Strings.user} ${leaderBoardController.dataList[index].uid.toString().numericOnly()}',
                                    scoreOutOf33: leaderBoardController
                                        .dataList[index].score
                                        .toString()
                                        .numericOnly(),
                                    isMainRow: Constant.isFalse);
                              }),
                    ]),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget leaderBoardPanel(
      {required String no,
      required String username,
      required String scoreOutOf33,
      required bool isMainRow}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: height * Constant.leaderBoardColumnHight,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: isMainRow
                    ? AppTheme.colorPrimaryTheme
                    : AppTheme.colorWhite),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(no)],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: height * Constant.leaderBoardColumnHight,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: isMainRow
                    ? AppTheme.colorPrimaryTheme
                    : AppTheme.colorWhite),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(username)],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: height * Constant.leaderBoardColumnHight,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: isMainRow
                    ? AppTheme.colorPrimaryTheme
                    : AppTheme.colorWhite),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(scoreOutOf33)],
            ),
          ),
        ),
      ],
    );
  }
}
