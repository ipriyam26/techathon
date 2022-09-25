
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/register_controller.dart';

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
