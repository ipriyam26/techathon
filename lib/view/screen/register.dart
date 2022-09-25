import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:techathon/controller/register_controller.dart';

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
          margin: EdgeInsets.only(top: 23.h),
          child: Column(
              children: [ImagePicker(registerController: registerController)]),
        )
      ],
    )));
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
      // context and builder are
      // required properties in this widget
      context: context,
      builder: (BuildContext context) {
        // we set up a container inside which
        // we create center column and display text

        // Returning SizedBox instead of a Container
        return SizedBox(
          height: 100,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton.icon(
                    onPressed: () {
                      registerController.getFromCamera();
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("Camera")),
                TextButton.icon(
                    onPressed: () => registerController.getFromGallery(),
                    icon: const Icon(Icons.image),
                    label: const Text("Gallery")),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Stack(
        children: [
    registerController.imagePath.value !=""?
          Image.file(
            File(registerController.imagePath.value),
            width: 375.w,
            height: 200.h,
            fit: BoxFit.cover,
          ): Image.asset('assets/signup.png',
          height: 94.h,
          width: 94.w,
          fit: BoxFit.cover,
          ) ,
    Container(
      height: 94.h,
      width: 94.w,
    color: Color.fromARGB(151, 94, 92, 92),
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
    );
  }
}
