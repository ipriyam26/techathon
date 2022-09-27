import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class history_item extends StatelessWidget {
  const history_item({
    super.key,
    required this.isCertificate,
    required this.color,
    required this.location,
    required this.festName,
    required this.festCategory,
    required this.festDate,
  });

  final bool isCertificate;
  final int color;
  final String location;
  final String festName;
  final String festCategory;
  final DateTime festDate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12.sp),
              child: Positioned(
                child: Container(
                  width: 350.w,
                  height: 160.h,
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
                    borderRadius: BorderRadius.all(Radius.circular(10.sp)),
                    color: Colors.grey.shade200.withOpacity(0.8),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 6.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [Text("29, September,2022")],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Positioned(
                        top: 30.h,
                        left: 20.w,
                        child: Row(
                          children: [
                            Container(
                              height: 94.h,
                              width: 107.w,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/300×300")),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.sp),
                                  ),
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  festCategory,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp),
                                ),
                                Text(
                                  festName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.sp),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      location,
                                      style: TextStyle(
                                          color: const Color(0xFF233C7B),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      isCertificate
                          ? Positioned(
                              top: 130.h,
                              left: 190.w,
                              child: Row(
                                children: [
                                  Container(
                                    width: 130.w,
                                    height: 25.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0Xff233C7B),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.sp))),
                                    child: Center(
                                      child: Text(
                                        "Collect Certificate",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
        Positioned(
            left: 40.w,
            top: 4.h,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(color),
                  borderRadius: BorderRadius.all(Radius.circular(8.sp))),
              width: 62.w,
              height: 20.h,
              child: Center(
                child: Text(
                  "Ongoing",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                      color: Colors.white),
                ),
              ),
            ))
      ],
    );
  }
}
