import 'package:get/get.dart';
import 'package:techathon/model/register.dart';

class EducationController extends GetxController {
  Rx<Graduate> graduate = Graduate.undergraduate.obs;
  RxString university = "".obs;



  @override
  void onClose() {}

  void setGraduate(Graduate value) {
    graduate.value = value;
    refresh();
  }

  void setUniversity(String value) {
    university.value = value;
    refresh();
  }

  Education getEducation() {
    return Education(graduate: graduate.value, university: university.value);
  }
}
