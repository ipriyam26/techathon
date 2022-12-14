import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:techathon/controller/history_controller.dart';

import '../widget/history/history_item.dart';

class History extends StatelessWidget {
  HistoryController historyController = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 360.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/history_banner2.png'),
              )),
              height: 150.h,
              child: Stack(
                children: [
                  Positioned(
                      top: 70.h,
                      left: 30.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 30.sp,
                              ),
                              Text(
                                "History",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25.sp,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 150.w,
                          ),
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              width: 25.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF233C7B),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.sp))),
                              height: 25.h,
                              child: const Center(
                                child: Icon(
                                  Icons.sort,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  history_item(
                    isCertificate: false,
                    color: (0xFF00C838),
                    location: 'Bennett University',
                    festName: 'Hackathon-2022',
                    festCategory: 'AI ML',
                    festDate: DateTime.now(),
                  ),
                  history_item(
                    color: 0xFFFE724C,
                    isCertificate: true,
                    location: 'Asia',
                    festName: 'Break the Code',
                    festCategory: 'Techathon',
                    festDate: DateTime.now(),
                  ),
                  history_item(
                    isCertificate: false,
                    color: 0xFF00C838,
                    location: 'San Fransisco',
                    festName: 'CodeWar',
                    festCategory: 'Block Chain',
                    festDate: DateTime.now(),
                  ),
                  history_item(
                    isCertificate: false,
                    color: 0xFF00C838,
                    location: 'New york',
                    festName: 'Hustlemania',
                    festCategory: 'Web Development',
                    festDate: DateTime.now(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
