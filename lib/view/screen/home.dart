import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/event_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EventController eventController = Get.put(EventController());
    String type = eventController.upcomingEvent[0].maximumMembers == 1
        ? "Solo"
        : eventController.upcomingEvent[0].minimumMembers > 1
            ? "Team"
            : "Solo&Team";
    return Scaffold(
      body: eventController.upcomingEvent.isEmpty
          ? const FlutterLogo()
          : Column(
              children: [
                Container(
                  height: 276.h,
                  width: 375.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(
                            eventController.upcomingEvent[0].imageUrl,
                          ))),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                  size: 30.sp,
                                )),
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.ios_share_outlined,
                                  color: Colors.white,
                                  size: 30.sp,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Pill(type: type),
                            
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

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
        child: Text(type,
        style: TextStyle(color: Colors.white
        ,fontSize: 12.sp,
        fontFamily: GoogleFonts.inter().fontFamily
        ),
        ));
  }
}
