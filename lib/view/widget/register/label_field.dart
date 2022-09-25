import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
