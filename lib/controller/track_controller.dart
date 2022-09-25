import 'package:get/get.dart';

class TrackController extends GetxController {
  RxBool isFirstHackathon = false.obs;
  RxInt degreeYear = 1.obs;
  RxList<String> learnAbout = <String>[].obs;

  void setIsFirstHackathon(bool value) {
    isFirstHackathon.value = value;
    update();
  }

void setDegreeYear(int value) {
    degreeYear.value = value;
    update();
  }

  void addLearnAbout(String value) {
    learnAbout.add(value);
    update();
  }

}
