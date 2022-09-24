import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/event_controller.dart';
class ActionButtonRow extends StatelessWidget {
  const ActionButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 30.sp,
            )),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.ios_share_outlined,
              color: Colors.white,
              size: 30.sp,
            )),
      ],
    );
  }
}