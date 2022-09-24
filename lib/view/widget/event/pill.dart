
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Pill extends StatelessWidget {
  const Pill({
    Key? key,
    required this.type,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 86.w,
        height: 17.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xff233C7B)),
        child: Text(
          type,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontFamily: GoogleFonts.inter().fontFamily),
        ));
  }
}
