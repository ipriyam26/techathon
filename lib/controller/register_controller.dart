import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart' as Imp;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techathon/model/register.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  late Register register;
  RxString teamName = "".obs;
  RxString imagePath = "".obs;
  RxString name = "".obs;
  RxString phoneNumber = "".obs;
  RxString email = "".obs;
  RxInt age = 18.obs;
  RxString imageUrl = "".obs;
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

  void getFromGallery() async {
    // final ImagePicker picker = ImagePicker();
    final Imp.ImagePicker picker = Imp.ImagePicker();
    final Imp.XFile? image =
        await picker.pickImage(source: Imp.ImageSource.gallery);
    if (image == null) return;
    final imagePathLocal = image.path;
    imagePath.value = imagePathLocal;
    update();
  }

  void getFromCamera() async {
    // final ImagePicker picker = ImagePicker();
    final Imp.ImagePicker picker = Imp.ImagePicker();
    final Imp.XFile? image =
        await picker.pickImage(source: Imp.ImageSource.camera);
    if (image == null) return;
    final imagePathLocal = image.path;
    imagePath.value = imagePathLocal;
    update();
  }

  updateApplyWith(ApplyingWith applyingWith) {
    this.applyingWith = applyingWith;
    refresh();
  }

  uploadToImgur() async {
    final pngByteData = await File(imagePath.value).readAsBytes();
    var headers = {'Authorization': 'Client-ID {{a83359f69b06947}}'};
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://api.imgur.com/3/image'));
    request.fields.addAll({'image': '$pngByteData'});
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(await response.stream.bytesToString());
      }
    } else {
      if (kDebugMode) {
        print(response.reasonPhrase);
      }
    }
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
