import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:quiz/routes/app_routes.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/widgets/error_dialoge.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GetStorage storage = GetStorage();
  final firebase_auth.FirebaseAuth firebaseAuth =
      firebase_auth.FirebaseAuth.instance;
  final key = GlobalKey<FormState>();

  final firestore = FirebaseFirestore.instance.collection(Strings.user1).doc();
  void doLogin(context) async {
    if (key.currentState!.validate()) {
      try {
        firebase_auth.UserCredential userCredential =
            await firebaseAuth.signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        await storage.write(Strings.uid, userCredential.user!.uid.toString());

        Get.offNamed(AppRoute.HOME);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) {
              return errorDialoge(error: e.toString());
            });
      }
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return errorDialoge(
              error: Strings.errorFound,
              backgroundColor: AppTheme.colorWhite,
            );
          });
    }
  }
}
