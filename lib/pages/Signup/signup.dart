import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/pages/Signup/signup_controller.dart';
import 'package:quiz/routes/app_routes.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';
import 'package:get/get.dart';
import 'package:quiz/util/resources.dart';
import 'package:quiz/widgets/custom_text.dart';
import 'package:quiz/widgets/no_appbar.dart';
import 'package:quiz/widgets/progress_bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final signUpController = Get.put(SignUpController());
  GetStorage storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: signUpController,
        builder: (bv) {
          return SafeArea(
              child: Scaffold(
            backgroundColor: AppTheme.colorWhite.withOpacity(0.9),
            appBar: NoAppBar(),
            body: _body(),
          ));
        });
  }

  _body() {
    return Form(
      key: signUpController.key,
      child: Stack(children: [
        signUpController.isLoading
            ? const ProgressBar(isLoader: true)
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: Constant.loginTopPadding),
                  child: Column(
                    children: [
                      Container(
                        height: Constant.loginPageLogoHeight,
                        width: Constant.loginPageLogoWidth,
                        padding:
                            const EdgeInsets.all(Constant.loginPageLogoPadding),
                        decoration: BoxDecoration(
                            boxShadow: [
                              Constant.boxShadow(AppTheme.colorBlack)
                            ],
                            image: const DecorationImage(
                                image: AssetImage(appLogo))),
                      ),
                      textField(
                          controller: signUpController.emailController,
                          obsequreText: Constant.isFalse,
                          maxLength: 20,
                          title: Strings.enterEmail),
                      textField(
                          controller: signUpController.passwordController,
                          obsequreText: Constant.isTrue,
                          maxLength: 15,
                          title: Strings.enterPassword),
                      loginButton(),
                      const SizedBox(
                        height: Constant.loginSpace15,
                      ),
                      loginIntoYourAccount()
                    ],
                  ),
                ),
              ),
      ]),
    );
  }

  loginIntoYourAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(title: Strings.loginIntoYourAccount),
        InkWell(
          onTap: () {
            Get.offAllNamed(AppRoute.LOGIN);
          },
          child: CustomText(
            title: Strings.here,
            color: AppTheme.colorBlue,
          ),
        ),
      ],
    );
  }

  loginButton() {
    return SizedBox(
        height: Constant.loginButtonHeight,
        width: Constant.loginButtonWidth,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.colorBlack.withOpacity(0.7)),
            onPressed: () {
              signUpController.doSignUp(context);
            },
            child: const Text(Strings.signUp)));
  }

  textField(
      {required TextEditingController controller,
      required obsequreText,
      required int maxLength,
      required title}) {
    return Padding(
      padding: const EdgeInsets.all(Constant.textfeildAllPadding),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: AppTheme.colorTransparent)),
        padding: const EdgeInsets.all(Constant.textfeildAllPadding),
        child: TextFormField(
          controller: controller,
          obscureText: obsequreText,
          validator: (val) => val!.isNotEmpty ? null : Strings.wrongInput,
          maxLength: maxLength,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: title,
            counterText: Strings.emptyString,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Constant.textfeildRadius),
                borderSide: const BorderSide(color: AppTheme.colorTransparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Constant.textfeildRadius),
                borderSide: const BorderSide(color: AppTheme.colorTransparent)),
            fillColor: AppTheme.colorWhite,
            filled: true,
            contentPadding:
                const EdgeInsets.all(Constant.textfeildContentPadding),
          ),
        ),
      ),
    );
  }
}
