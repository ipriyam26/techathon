import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 311.w,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset.fromDirection(
                -1,
                -2,
              ),
              blurRadius: 12,
              // color: Color(0xfff2f2f7)
              color: const Color.fromRGBO(0, 0, 0, 0.5),
            )
          ],
          border: Border.all(color: const Color(0xFFBDBDBD)),
          borderRadius: BorderRadius.circular(12.sp),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            suffix: Container(
              width: 25.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF233C7B),
                  borderRadius: BorderRadius.all(Radius.circular(4.sp))),
              height: 25.h,
              child: const Icon(
                Icons.sort,
                color: Colors.white,
              ),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xFF233C7B),
            ),
          ),
        ),
      ),
    );
  }
}
