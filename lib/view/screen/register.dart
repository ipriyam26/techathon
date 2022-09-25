import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:techathon/controller/education_controller.dart';
import 'package:techathon/controller/register_controller.dart';
import 'package:techathon/view/widget/register/apply_widget.dart';
import 'package:techathon/view/widget/register/drop_down_education.dart';
import 'package:techathon/view/widget/register/image_picker.dart';
import 'package:techathon/view/widget/register/label_field.dart';
import 'package:techathon/view/widget/register/personal_info.dart';
import 'package:techathon/view/widget/register/top_bar.dart';

class RegisterScreen extends StatelessWidget {
  // const RegisterScreen({Key? key}) : super(key: key);
  RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const TopAppBar(),
        // Text("data")
        Container(
          margin: EdgeInsets.only(top: 23.h, left: 15.w, right: 15.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
    return Container(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
SizedBox(height: 18.h,),
const Label(label: "Education"),
 DropDownMenuCustomizedEducation(controller: educationController, label: "Education Level"),
 LabelField(controller: educationController.university, label: "University")
]),
    );
  }
}


