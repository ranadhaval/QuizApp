import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';
import 'package:quiz/util/resources.dart';
import 'package:quiz/widgets/custom_text.dart';
import '../../widgets/no_appbar.dart';
import 'splash_controller.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashController.height = MediaQuery.of(context).size.height;
    splashController.width = MediaQuery.of(context).size.width;
    splashController.update();

    return GetBuilder(
        init: splashController,
        builder: (con) {
          return SafeArea(
            child: Scaffold(appBar: NoAppBar(), body: _body()),
          );
        });
  }

  _body() {
    return Container(
      padding: const EdgeInsets.all(Constant.splashAllPadding),
      height: splashController.height,
      width: splashController.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: splashController.height! / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Constant.splashIconRadius),
                image: const DecorationImage(
                    image: AssetImage(appLogo), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Constant.splashTextPadding),
              child: CustomText(
                title: Strings.appName,
                fontSize: Constant.splashText,
                fontWight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
