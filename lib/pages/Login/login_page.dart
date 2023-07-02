import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/pages/Login/login_controller.dart';
import 'package:quiz/routes/app_routes.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';
import 'package:get/get.dart';
import 'package:quiz/util/resources.dart';
import 'package:quiz/widgets/custom_text.dart';
import 'package:quiz/widgets/no_appbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginController = Get.put(LoginController());
  GetStorage storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: loginController,
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
      key: loginController.key,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: Constant.loginTopPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: Constant.loginPageLogoHeight,
                width: Constant.loginPageLogoWidth,
                padding: const EdgeInsets.all(Constant.loginPageLogoPadding),
                decoration: BoxDecoration(
                    boxShadow: [Constant.boxShadow(AppTheme.colorBlack)],
                    image: const DecorationImage(image: AssetImage(appLogo))),
              ),
              textField(
                  controller: loginController.emailController,
                  obsequreText: Constant.isFalse,
                  maxLength: 20,
                  title: Strings.enterEmail),
              textField(
                  controller: loginController.passwordController,
                  obsequreText: Constant.isTrue,
                  maxLength: 15,
                  title: Strings.enterPassword),
              loginButton(),
              const SizedBox(
                height: Constant.loginSpace15,
              ),
              creatAccount()
            ],
          ),
        ),
      ),
    );
  }

  creatAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(title: Strings.createAccount),
        InkWell(
          onTap: () {
            Get.offAllNamed(AppRoute.SIGNUP);
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
              loginController.doLogin(context);
            },
            child: const Text(Strings.login)));
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
          validator: (val) =>
              val!.isNotEmpty ? null : Strings.wrongInput,
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
