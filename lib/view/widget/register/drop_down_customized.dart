import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/register_controller.dart';
import 'package:techathon/model/register.dart';

class DropDownMenuCustomizedAge extends StatelessWidget {
  const DropDownMenuCustomizedAge({
    Key? key,
    required this.controller,
    required this.label,
  }) : super(key: key);
  final RegisterController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    List<int> age = List<int>.generate(80, (i) => 16 + i);
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
        Container(
          height: 50.h,
          width: 154.w,
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.r),
              border: Border.all(color: const Color(0xffEEEEEE), width: 1.5.w)),
          child: DropdownButton(
            // Initial Value
            value: controller.age.value,
            underline: Container(),
            isDense: true,
            isExpanded: true,
            // style: TextStyle(backgroundColor: Colors.yellow),
            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: age.map((int items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp),
                ),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (int? newValue) {
              controller.age.value = newValue!;
              controller.refresh();
            },
          ),
        ),
      ],
    );
  }
}

class DropDownMenuCustomized extends StatelessWidget {
  const DropDownMenuCustomized({
    Key? key,
    required this.controller,
    required this.label,
  }) : super(key: key);
  final RegisterController controller;
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
        Container(
          height: 50.h,
          width: 154.w,
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.r),
              border: Border.all(color: const Color(0xffEEEEEE), width: 1.5.w)),
          child: DropdownButton(
            // Initial Value
            value: controller.gender,
            underline: Container(),
            isDense: true,
            isExpanded: true,
            // style: TextStyle(backgroundColor: Colors.yellow),
            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: Gender.values.map((Gender items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp),
                ),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (Gender? newValue) {
              controller.gender = newValue!;
              controller.refresh();
            },
          ),
        ),
      ],
    );
  }
}
