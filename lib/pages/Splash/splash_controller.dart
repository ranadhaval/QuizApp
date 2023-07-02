import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/routes/app_routes.dart';
import 'package:quiz/util/_string.dart';

class SplashController extends GetxController {
  double? height;
  double? width;

  GetStorage storage = GetStorage();
  String? uid;

  @override
  void onInit() async {
    getstorage();

    Future.delayed(
        const Duration(
          seconds: 2,
        ),
        () => uid!.isEmpty
            ? Get.offAllNamed(AppRoute.LOGIN)
            : Get.offAllNamed(AppRoute.HOME));

    super.onInit();
  }

  void getstorage() async {
    if (storage.read(Strings.uid) == null) {
      uid = Strings.emptyString;
    } else {
      uid = storage.read(Strings.uid).toString();
    }
    update();
  }
}
