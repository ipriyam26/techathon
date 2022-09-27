import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key, required this.month, required this.date})
      : super(key: key);

  final String month;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.transparent,
            child: Stack(
              children: [
                Container(
                  height: 162.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://source.unsplash.com/random/300×300"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.sp))),
                ),
                Positioned(
                    top: 18.h,
                    left: 180.w,
                    child: Container(
                      height: 60.h,
                      width: 60.h,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.sp))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            month,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 13.sp),
                          ),
                          Text(
                            "21",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 26.sp),
                          )
                        ],
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
