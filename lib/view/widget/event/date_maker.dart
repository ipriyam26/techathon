import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DateMaker extends StatelessWidget {
  const DateMaker({
    Key? key,
    required this.month,
    required this.day,
  }) : super(key: key);

  final String month;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: const Color(0xff233C7B)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            month,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                fontFamily: GoogleFonts.inter().fontFamily),
          ),
          Text(
            day,
            style: TextStyle(
                color: Colors.white,
                fontFamily: GoogleFonts.inter().fontFamily,
                fontSize: 30.sp),
          )
        ],
      ),
    );
  }
}