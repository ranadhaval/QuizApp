import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/pages/Home/home_controller.dart';
import 'package:quiz/routes/app_routes.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';
import 'package:quiz/widgets/custom_appbar.dart';
import 'package:quiz/widgets/custom_text.dart';
import 'package:quiz/widgets/progress_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeController = Get.put(HomeController());
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder(
        builder: (con) {
          return Stack(children: [
            Scaffold(
              drawer: Drawer(
                width: width / Constant.drawerWidth,
                elevation: Constant.drawerElevation,
                child: Column(
                  children: [
                    SizedBox(
                      height: height,
                      width: width,
                      child: Column(
                        children: [
                          Expanded(
                            flex: Constant.ONE,
                            child: Container(
                              width: width,
                              color: AppTheme.colorPrimaryTheme,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: Constant.userCicleRadius,
                                    backgroundColor:
                                        AppTheme.colorRed.withOpacity(0.7),
                                    child: const CircleAvatar(
                                      backgroundColor: AppTheme.colorWhite,
                                      radius: Constant.userCicleRadius2,
                                      child: Center(
                                        child: Icon(
                                          Icons.person,
                                          size: Constant.userIconSize,
                                          color: AppTheme.colorPrimaryTheme,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: Constant.userTextPadding,
                                        top: Constant.userTextPadding),
                                    child: CustomText(
                                      title:
                                          '${Strings.user} ${homeController.uid.toString().numericOnly(firstWordOnly: Constant.isTrue)}',
                                      fontSize: Constant.userTextSize,
                                      height: Constant.ZERO.toDouble(),
                                      fontWight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: Constant.ONE.toDouble(),
                            margin: const EdgeInsets.only(
                                bottom: Constant.drawerDividerMargin),
                            decoration: BoxDecoration(
                                color: AppTheme.greyColor,
                                boxShadow: [Constant.boxShadow(Colors.black)]),
                          ),
                          Expanded(
                              flex: Constant.TWO,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(
                                          Constant.drawerTilePadding),
                                      child: ListTile(
                                        selected: Constant.isTrue,
                                        selectedTileColor:
                                            AppTheme.colorPrimaryTheme,
                                        selectedColor: AppTheme.colorWhite,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Constant.drawerTileBorderRadius),
                                        ),
                                        leading: const Icon(
                                          Icons.quiz,
                                          size: Constant.drawerTileIconSize,
                                        ),
                                        onTap: () {
                                          Get.back();
                                        },
                                        title: CustomText(
                                          title: Strings.quiz,
                                          fontWight: FontWeight.bold,
                                          fontSize: Constant.drawerTextSize,
                                          color: AppTheme.colorWhite,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(
                                          Constant.drawerTilePadding),
                                      child: ListTile(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Constant.drawerTileBorderRadius),
                                        ),
                                        splashColor: AppTheme.colorPrimaryTheme,
                                        onTap: () {
                                          Get.back();

                                          Get.toNamed(AppRoute.LeaderBoard);
                                        },
                                        leading: const Icon(
                                          Icons.leaderboard,
                                          size: Constant.drawerTileIconSize,
                                        ),
                                        title: CustomText(
                                          title: Strings.leaderBoard,
                                          fontWight: FontWeight.bold,
                                          fontSize: Constant.drawerTextSize,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(
                                          Constant.drawerTilePadding),
                                      child: ListTile(
                                        splashColor: AppTheme.colorPrimaryTheme,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Constant.drawerTileBorderRadius),
                                        ),
                                        onTap: () {
                                          Get.back();

                                          homeController.doLogout();
                                        },
                                        leading: const Icon(
                                          size: Constant.drawerTileIconSize,
                                          Icons.logout_outlined,
                                        ),
                                        title: CustomText(
                                          title: Strings.exit,
                                          fontSize: Constant.drawerTextSize,
                                          fontWight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              appBar: appBar(
                  leadingWidget: Builder(builder: (context) {
                    return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu));
                  }),
                  title: Strings.appName),
              backgroundColor: AppTheme.colorWhite,
              body: _body(),
            ),
          ]);
        },
        init: homeController,
      ),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.only(top: Constant.homeBodyPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: homeController.quizTileList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(AppRoute.QUIZ, arguments: {
                      Strings.type: homeController.quizTileList[index].subtitle
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.all(Constant.quizSubTitlePadding),
                        child: CustomText(
                            title: homeController.quizTileList[index].subtitle),
                      ),
                      Stack(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: Constant.quizTilePadding,
                                  bottom: Constant.quizTilePadding),
                              child: Container(
                                height: Constant.quizTileBand,
                                width: Constant.quizTileBandWidth,
                                color: Constant.listColor[
                                    index % Constant.DarkColor.length],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Constant.quizTileBandPadding,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: Constant.quizTileLeftPadding,
                                right: Constant.quizTileRightPadding,
                                top: Constant.quizTileTopPadding,
                                bottom: Constant.quizTileBottomPadding),
                            margin:
                                const EdgeInsets.all(Constant.quizTileMargin),
                            color: Constant
                                .listColor[index % Constant.OpColor.length],
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: const [
                                        Icon(
                                          Icons.quiz,
                                          size: Constant.quizIconSize,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: Constant.spaceTwenty,
                                    ),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          CustomText(
                                            title: homeController
                                                .quizTileList[index].title,
                                            color: AppTheme.colorWhite,
                                            fontSize:
                                                Constant.quizTitleTextSize,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(
                                          Constant.timeBoxPadding),
                                      decoration: BoxDecoration(
                                          color: Constant.listColor[index %
                                              Constant.listColor.length],
                                          borderRadius: BorderRadius.circular(
                                              Constant.timeBoxCorner),
                                          border: Border.all(
                                              color: AppTheme.colorWhite)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            title:
                                                '${Strings.time} : ${homeController.quizTileList[index].time.toString()} min',
                                            fontSize: Constant.timeSize,
                                            color: AppTheme.colorWhite,
                                            fontWight: FontWeight.bold,
                                          ),
                                          CustomText(
                                            title:
                                                '${Strings.marks} : ${homeController.quizTileList[index].marks.toString()}',
                                            fontSize: Constant.timeSize,
                                            color: AppTheme.colorWhite,
                                            fontWight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: Constant.spaceTwenty,
          ),
        ],
      ),
    );
  }
}
