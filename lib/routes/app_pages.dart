// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:quiz/pages/Leaderboard/leaderboard.dart';
import 'package:quiz/pages/Quiz/quiz.dart';
import 'package:quiz/pages/Home/home.dart';
import 'package:quiz/pages/Result/result.dart';
import 'package:quiz/routes/app_routes.dart';
import '../pages/Login/login_page.dart';
import '../pages/Signup/signup.dart';
import '../pages/Splash/splash.dart';

class AppPages {
  static var list = [
    GetPage(name: AppRoute.SIGNUP, page: () => const SignUp()),
    GetPage(name: AppRoute.LOGIN, page: () => const Login()),
    GetPage(name: AppRoute.SPLASH, page: () => const Splash()),
    GetPage(name: AppRoute.HOME, page: () => const Home()),
    GetPage(name: AppRoute.QUIZ, page: () => const Quiz()),
    GetPage(name: AppRoute.LeaderBoard, page: () => const LeaderBoard()),
    GetPage(name: AppRoute.RESULT, page: () => const Result()),
  ];
}
