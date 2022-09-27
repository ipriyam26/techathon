import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Voucher extends StatelessWidget {
  const Voucher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 315.w,
          height: 120.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  //
                  const Color(0XFF439DFE).withOpacity(0.8),
                  const Color(0xFFF687FF).withOpacity(0.8),
                ],
              ),
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20.sp))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.sp))),
                    height: 50.h,
                    child: Container(
                      child: const Center(
                        child: Icon(
                          Icons.card_giftcard,
                          color: Color(0xffF27484),
                        ),
                        // child: Container(
                        //   width: 21.w,
                        //   height: 17.h,
                        //   decoration: BoxDecoration(
                        //       color: Colors.pink,
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(5.sp))),
                        // ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Claim 1 free ticket!",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Share an event to with friends \nand get 1 ticket.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
