import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/register_controller.dart';
import 'package:techathon/view/widget/register/drop_down_customized.dart';
import 'package:techathon/view/widget/register/label_field.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
    required this.registerController,
  }) : super(key: key);
  final RegisterController registerController;
  @override
  Widget build(BuildContext context) {
    String label = "Personal Info";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(label: label),
        GetBuilder<RegisterController>(
          init: RegisterController(),
          initState: (_) {},
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelField(controller: controller.name, label: "Name"),
                LabelField(
                    controller: controller.phoneNumber, label: "Phone Number"),
                LabelField(controller: controller.email, label: "Email"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropDownMenuCustomized(
                        controller: controller, label: "Gender"),
                    DropDownMenuCustomizedAge(
                        controller: controller, label: "Age")
                  ],
                ),
              ],
            );
          },
        )
      ],
    );
  }
}

class Label extends StatelessWidget {
  const Label({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontFamily: GoogleFonts.inter().fontFamily,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 1,
          color: const Color(0xff233C7B)),
    );
  }
}
