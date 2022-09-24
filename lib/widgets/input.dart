import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textInput({controller, hint}) {
  return Container(
    margin: EdgeInsets.only(top: 10.sp),
    height: 47.h,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(10.sp)),
      color: Colors.white,
    ),
    padding: EdgeInsets.only(left: 10.sp),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(fontSize: 15.16.sp, color: Color(0xFFABABAB))),
    ),
  );
}
