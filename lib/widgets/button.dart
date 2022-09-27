import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget button({text}) {
  return Container(
    width: 142.44.w,
    height: 42.73.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
        color: const Color(0xFF233C7B)),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
