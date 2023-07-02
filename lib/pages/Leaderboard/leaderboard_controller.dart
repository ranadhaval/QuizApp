import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:quiz/pages/Home/model/data_model.dart';
import 'package:quiz/util/_string.dart';

class LeaderBoardController extends GetxController {
  @override
  void onInit() async {
    fetchData();

    super.onInit();
  }

  bool isLoading = true;

  List<DataModel> dataList = [];

  Future<void> fetchData() async {
    await FirebaseFirestore.instance
        .collection(Strings.user1)
        .get()
        .then((QuerySnapshot querysnapshot) {
      querysnapshot.docs.forEach((element) {
        dataList.insert(
            0,
            DataModel(
              uid: element.get(Strings.uid),
              score: int.parse(element.get(Strings.score)),
            ));
      });
    });
    dataList.sort(
      (a, b) {
        return b.score.toInt().compareTo(a.score.toInt());
      },
    );
    update();
    if (dataList.isNotEmpty) {
      isLoading = false;
    }
    update();
  }
}
