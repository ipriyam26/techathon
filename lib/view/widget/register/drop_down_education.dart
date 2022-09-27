import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:techathon/controller/education_controller.dart';
import 'package:techathon/model/register.dart';

class DropDownMenuCustomizedEducation extends StatelessWidget {
  const DropDownMenuCustomizedEducation({
    Key? key,
    required this.controller,
    required this.label,
  }) : super(key: key);
  final EducationController controller;
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
            toBeginningOfSentenceCase(label)!,
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
          width: 340.w,
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.r),
              border: Border.all(color: const Color(0xffEEEEEE), width: 1.5.w)),
          child: DropdownButton(
            // Initial Value
            value: controller.graduate.value,
            underline: Container(),
            isDense: true,
            isExpanded: true,
            // style: TextStyle(backgroundColor: Colors.yellow),
            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: Graduate.values.map((Graduate items) {
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
            onChanged: (value) {
              controller.setGraduate(value!);
            },
          ),
        ),
      ],
    );
  }
}