import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/register_controller.dart';
import 'package:techathon/model/register.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

class RegisterScreen extends StatelessWidget {
  // const RegisterScreen({Key? key}) : super(key: key);
  RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Container(
          width: 375.w,
          height: 108.h,
          padding: EdgeInsets.only(top: 20.h),
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          )),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 24.sp,
                  )),
              Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
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
            PersonalInfo(registerController: registerController)
          ]),
        )
      ],
    )));
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
    required this.registerController,
  }) : super(key: key);
  final RegisterController registerController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal Info",
          style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              color: const Color(0xff233C7B)),
        ),
        GetBuilder<RegisterController>(
          init: RegisterController(),
          initState: (_) {},
          builder: (controller) {
            return Column(
              children: [
                LabelField(controller: controller.name, label: "Name"),
                LabelField(controller: controller.phoneNumber, label: "Phone Number"),
                LabelField(controller: controller.email, label: "Email"),
              ],
            );
          },
        )
      ],
    );
  }
}

class LabelField extends StatelessWidget {
  const LabelField({
    Key? key,
    required this.controller,
    required this.label,
  }) : super(key: key);
  final RxString controller;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 14.h,
        ),
        SizedBox(
          height: 21.h,
          child: Text(
            label,
            style: TextStyle(
              fontFamily: GoogleFonts.raleway().fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: const Color(0xff888888),
              // height: 21.sp,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          initialValue: controller.value,
          style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
          onChanged: (value) {
            controller.value = value;
            controller.refresh();
          },
          cursorColor: Colors.black,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 2,
                color: Color(0xffEEEEEE),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 2,
                color: Color.fromARGB(255, 62, 62, 62),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Color(0xffEEEEEE),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ApplyWithWidget extends StatelessWidget {
  const ApplyWithWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      init: RegisterController(),
      initState: (_) {},
      builder: (controller) {
        return Container(
          height: 70.h,
          // color: Colors.amber,
          margin: EdgeInsets.only(left: 20.h),
          child: GridView(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            children: ApplyingWith.values.map((e) {
              return RadioTile(
                e: e,
                controller: controller,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

class RadioTile extends StatelessWidget {
  const RadioTile({
    Key? key,
    required this.e,
    required this.controller,
  }) : super(key: key);
  final ApplyingWith e;
  final RegisterController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          // fillColor: MaterialStateProperty.resolveWith((states)
          value: e.name,
          groupValue: controller.applyingWith.name,
          onChanged: (value) {
            controller.applyingWith = e;
            controller.refresh();
          },
        ),
        Text(
          toBeginningOfSentenceCase(e.name.splitMapJoin(
            RegExp(r'[A-Z]'),
            onMatch: (m) => ' ${m.group(0)}',
            onNonMatch: (n) => n,
          ))!,
          style: TextStyle(
              fontFamily: GoogleFonts.raleway().fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: const Color(0xff888888)),
        ),
      ],
    );
  }
}

class ImagePicker extends StatelessWidget {
  const ImagePicker({
    Key? key,
    required this.registerController,
  }) : super(key: key);

  final RegisterController registerController;
  void showModal(context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: const Color.fromARGB(168, 158, 158, 158),
          height: 70.h,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton.icon(
                    style: TextButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {
                      registerController.getFromCamera();
                    },
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Camera",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton.icon(
                    style: TextButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () => registerController.getFromGallery(),
                    icon: const Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Gallery",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipOval(
            child: Stack(
              children: [
                registerController.imagePath.value != ""
                    ? Image.file(
                        File(registerController.imagePath.value),
                        width: 375.w,
                        height: 200.h,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/signup.png',
                        height: 94.h,
                        width: 94.w,
                        fit: BoxFit.cover,
                      ),
                Container(
                  height: 94.h,
                  width: 94.w,
                  color: const Color.fromARGB(151, 94, 92, 92),
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {
                      showModal(context);
                    },
                    icon: Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text("Upload your pic",
              style: TextStyle(
                  fontFamily: GoogleFonts.raleway().fontFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: const Color(0xff888888)
// height: 21.h,
                  )),
        ],
      ),
    );
  }
}
