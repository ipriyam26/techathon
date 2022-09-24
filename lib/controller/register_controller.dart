import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techathon/model/register.dart';

class RegisterController extends GetxController {
  late Register register;
  RxString teamName = "".obs;
  RxString imageUrl = "".obs;
  RxString name = "".obs;
  RxString phoneNumber = "".obs;
  RxString email = "".obs;
  RxInt age = 0.obs;
  ApplyingWith applyingWith = ApplyingWith.solo;
  Gender gender = Gender.male;
  late Education education;
  late Tracks tracks;
  late EventInfo eventInfo;

  void addEducation(Education education) {
    this.education = education;
  }

  void addTracks(Tracks tracks) {
    this.tracks = tracks;
  }

  void addEventInfo(EventInfo eventInfo) {
    this.eventInfo = eventInfo;
  }

  void publish() {
    register = Register(
      teamName: teamName.value,
      imageUrl: imageUrl.value,
      name: name.value,
      applyingWith: applyingWith,
      phoneNumber: phoneNumber.value,
      email: email.value,
      age: age.value,
      gender: gender,
      education: education,
      tracks: tracks,
      eventInfo: eventInfo,
    );

Get.snackbar(
              "Success",
               "${register.teamName} registered Successfully",
               icon: const Icon(Icons.check_circle_outline_rounded, color: Colors.white),
               snackPosition: SnackPosition.BOTTOM,
               backgroundColor: Colors.green,
               borderRadius: 20,
               margin: const EdgeInsets.all(15),
               colorText: Colors.white,
               duration: const Duration(seconds: 4),
               isDismissible: true,
               dismissDirection: DismissDirection.down,
               forwardAnimationCurve: Curves.easeOutBack,

               );

   
  }
}
