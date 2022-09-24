import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget button({text}) {
  return Container(
    width: 142.44.w,
    height: 42.73.h,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w700),
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
        color: Color(0xFF233C7B)),
  );
}
