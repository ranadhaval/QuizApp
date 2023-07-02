import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/pages/Home/model/data_model.dart';
import 'package:quiz/routes/app_routes.dart';
import 'package:quiz/pages/Home/model/QuizTileModel.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';

class HomeController extends GetxController {
  GetStorage storage = GetStorage();
  String? uid;

  @override
  void onInit() async {
    uid = storage.read(Strings.uid).toString();
    await fetchData();
    await getDatabyUId();

    super.onInit();
  }

  doLogout() async {
    storage.erase();
    Get.offAllNamed(AppRoute.LOGIN);
  }

  List<DataModel> dataList = [];
  List<QuizTileModel> quizTileList = [];
  Future<void> fetchData() async {
    await FirebaseFirestore.instance
        .collection(Strings.user1)
        .get()
        .then((QuerySnapshot querysnapshot) {
      querysnapshot.docs.forEach((element) {
        dataList.insert(
            Constant.ZERO,
            DataModel(
              uid: element.get(Strings.uid),
              score: int.parse(element.get(Strings.score)),
            ));
      });
    });

    quizTileList.addAll({
      QuizTileModel(
          subtitle: Strings.gameQuiz,
          title: Strings.quizBasedOnGames,
          marks: Constant.TEN,
          time: Constant.FIVE),
      QuizTileModel(
        subtitle: Strings.sportsQuiz,
        title: Strings.liveSportsGameQuiz,
        marks: Constant.FIFTEEN,
        time: Constant.THREE,
      ),
      QuizTileModel(
        subtitle: Strings.gkQuiz,
        title: Strings.generalKnowledgeBasedQuiz,
        marks: Constant.EIGHT,
        time: Constant.FOUR,
      )
    });
    update();
  }

  List<DataModel> mydata = [];
  getDatabyUId() {
    mydata = dataList.where((element) => element.uid == uid).toList();
    print(mydata.length);
  }
}
