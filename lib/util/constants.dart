import 'package:flutter/material.dart';
import 'package:quiz/util/hexcode.dart';

class Constant {
  static double splashIconRadius = 15;
  static const double midiumn = 14;
  static const double splashText = 18;
  static const double splashTextPadding = 8;
  static const double splashAllPadding = 40;
  static const double cardElevation = 6.0;
  static const double buttonRoundedCorener = 10.0;
  static const double extraLargePadding = 25.0;
  static const double medium_1 = 16;
  static const double TRAININGLEADINGTEXTSIZE = 15;
  
  // login page
  static const double loginPageLogoWidth = 100;
  static const double loginPageLogoHeight = 100;
  static const double loginPageLogoPadding = 40;
  static const double textfeildAllPadding = 8;
  static const double textfeildContentPadding = 20;
  static const double textfeildRadius = 12;
  static const double loginButtonHeight = 50;
  static const double loginButtonWidth = 150;
  static const double errordialogTitlePadding = 10;
  static const double errordialogContentPadding = 10;
  static const double customTextPadding = 3;
  static const double loginSpace15 = 15;

  //home page
  static const double homeGreetingFontSize = 20;
  static const double homeGreetingPadding = 15;
  static const double appbarFontSize = 18;
  static const double logoutIconPadding = 25;
  static const double userLogoPadding = 8;
  static const double userLogoRadius = 32;
  static const double userLogoRadius2 = 30;
  static const double userLogoTextSize = 29;
  static const double homeBodyPadding = 10;
  static const double spaceTwenty = 20;
  static const double drawerWidth = 1.5;
  static const double drawerElevation = 5;
  static const double userCicleRadius = 50;
  static const double userCicleRadius2 = 47;
  static const double userIconSize = 55;
  static const double userTextPadding = 5;
  static const double userTextSize = 23;
  static const double quizIconSize = 27;
  static const double quizTitleTextSize = 18;
  static const double quizSubTitlePadding = 8.0;
  static const double quizTilePadding = 20;
  static const double quizTileLeftPadding = 30;
  static const double quizTileTopPadding = 25;
  static const double quizTileRightPadding = 25;
  static const double quizTileBottomPadding = 25;
  static const double quizTileMargin = 5;
  static const double drawerTextSize = 18;
  static const double drawerTilePadding = 8;
  static const double drawerTileBorderRadius = 12;
  static const double drawerTileIconSize = 27;
  static const double drawerDividerMargin = 5;
  static const double quizTileBand = 50;
  static const double quizTileBandPadding = 10;
  static const double quizTileBandWidth = 5;
  static const double timeBoxCorner = 12;
  static const double timeBoxPadding = 5;
  static const double timeSize = 18;

  //leader board page
  static const double leaderBoardImagePadding = 20;
  static const double leaderBoardImageHeight = 3.5;
  static const double leaderBoardColumnHight = 0.05;

  //login page
  static const double loginTopPadding = 150;







  static const bool isTrue = true;
  static const bool isFalse = false;

  static const int ZERO = 0;
  static const int ONE = 1;
  static const int TWO = 2;


  static const int TEN = 10;
  static const int FIFTEEN = 15;
  static const int THREE = 3;
  static const int EIGHT = 8;
  static const int FOUR = 4;
  static const int FIVE = 5;

  static List listColor = [
    HexColor("#3f83e6"),
    HexColor("#efab64"),
    HexColor("#a695fc"),
    HexColor("#ff6292"),
    HexColor("#11a680"),
  ];
  static List DarkColor = [
    HexColor("#3264bd"),
    HexColor("#bc8a55"),
    HexColor("#8578c9"),
    HexColor("#c94d71"),
    HexColor("#158767"),
  ];
  static List OpColor = [
    HexColor("#eef2fe"),
    HexColor("#fff6ef"),
    HexColor("#ffedf3"),
    HexColor("#f5f2ff"),
    HexColor("#e5f8f6"),
  ];

  static boxShadow(Color shadowColor) {
    return BoxShadow(
        color: shadowColor.withOpacity(0.08),
        blurRadius: 4,
        spreadRadius: 0,
        offset: const Offset(0, 4));
  }

  static BoxShadow boxShadowButton(Color shadowColor) {
    return BoxShadow(
        color: shadowColor.withOpacity(0.1),
        blurRadius: 22,
        spreadRadius: 5,
        offset: const Offset(2, 4));
  }
}
