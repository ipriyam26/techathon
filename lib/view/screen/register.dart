import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/education_controller.dart';
import 'package:techathon/controller/register_controller.dart';
import 'package:techathon/controller/track_controller.dart';
import 'package:techathon/view/widget/register/apply_widget.dart';
import 'package:techathon/view/widget/register/drop_down_education.dart';
import 'package:techathon/view/widget/register/image_picker.dart';
import 'package:techathon/view/widget/register/label_field.dart';
import 'package:techathon/view/widget/register/personal_info.dart';
import 'package:techathon/view/widget/register/radio_tile.dart';
import 'package:techathon/view/widget/register/top_bar.dart';

class RegisterScreen extends StatelessWidget {
  // const RegisterScreen({Key? key}) : super(key: key);
  RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [
                    const TopAppBar(),

            Expanded(
// height: 700.h,
// color: Colors.pink,
              child: ListView(
                shrinkWrap: true, 
      children: [
              Container(
                // height: 720.h,
                margin: EdgeInsets.only( left: 15.w, right: 15.w),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                  Container(
                      // margin: EdgeInsets.symmetric(horizontal: 130.w),
                      width: 375.w,
                      // color: Colors.pink,
                      alignment: Alignment.center,
                      child: ImagePicker(registerController: registerController)),
                  SizedBox(
                    height: 25.h,
                  ),
                  const ApplyWithWidget(),
                  SizedBox(
                    height: 15.h,
                  ),
                  PersonalInfo(registerController: registerController),
                  EducationInfo(registerController: registerController)
                ]),
              )
      ],
    ),
            ),
          ],
        ));
  }
}

class EducationInfo extends StatelessWidget {
  EducationInfo({
    Key? key,
    required this.registerController,
  }) : super(key: key);
  final RegisterController registerController;
  EducationController educationController = Get.put(EducationController());
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 18.h,
      ),
      const Label(label: "Education"),
      DropDownMenuCustomizedEducation(
          controller: educationController, label: "Education Level"),
      LabelField(
          controller: educationController.university, label: "University"),
      SizedBox(
        height: 18.h,
      ),
      // Label(label: "Tracks"),
      // TrackInfo()
    ]);
  }
}

class TrackInfo extends StatelessWidget {
  TrackInfo({Key? key}) : super(key: key);
  TrackController trackController = Get.put(TrackController());
  @override
  Widget build(BuildContext context) {
    String label =               "Is this your first hackathon?";
    return GetBuilder<TrackController>(
      init: TrackController(),
      initState: (_) {},
      builder: (_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 7.h,
            ),
            CheckBoxLabel(label: label),
            Row(
              children: [
                Checkbox(
                  value: trackController.isFirstHackathon.value,
                  onChanged: (value) {
                    trackController.isFirstHackathon.value = value!;
                    trackController.refresh();
                  },
                ),
                const Text("Yes")
              ],
            )
          ,SizedBox(
              height: 13.h,
            ), 
            CheckBoxLabel(label: "How many years of experience you have in Btech")
          ],
        );
      },
    );
  }
}

class CheckBoxLabel extends StatelessWidget {
  const CheckBoxLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: GoogleFonts.raleway().fontFamily,
          fontSize: 14.sp),
    );
  }
}
