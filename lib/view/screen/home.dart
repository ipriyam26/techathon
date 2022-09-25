import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 360.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/home_banner.png'),
            )),
            height: 260.h,
            child: Stack(
              children: [
                Positioned(
                    top: 125.h,
                    left: 30.w,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50.sp,
                              height: 50.sp,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/user.jpg")),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18.sp)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Harry",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Bennett University, D1-502',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                Positioned(top: 205.h, left: 30.w, child: search_container())
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "For You",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_today_rounded,
                      color: Color(0xFF233C7B),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class search_container extends StatelessWidget {
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
