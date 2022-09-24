import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:techathon/controller/event_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EventController eventController = Get.put(EventController());

    String type = eventController.upcomingEvent.isEmpty
        ? "Loading"
        : eventController.upcomingEvent[0].maximumMembers == 1
            ? "Solo"
            : eventController.upcomingEvent[0].minimumMembers > 1
                ? "Team"
                : "Solo & Team";
    String freePaid = eventController.upcomingEvent.isEmpty
        ? "Loading"
        : eventController.upcomingEvent[0].cost == 0
            ? "Free"
            : "Paid";
    String month = eventController.upcomingEvent.isEmpty
        ? "Loading"
        : DateFormat('MMM').format(eventController.upcomingEvent[0].eventDate);
    String day = eventController.upcomingEvent.isEmpty
        ? "Loading"
        : DateFormat('d').format(eventController.upcomingEvent[0].eventDate);
    return Scaffold(
      body: eventController.upcomingEvent.isEmpty
          ? const FlutterLogo()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    eventImage(eventController, type, freePaid),
                    Container(
                      margin:
                          EdgeInsets.only(left: 23.w, top: 22.h, right: 23.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          eventTitleDate(eventController, month, day),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Color(0xff233C7B),
                              ),
                              SizedBox(
                                width: 11.5.w,
                              ),
                              Text(
                                eventController.upcomingEvent[0].location,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontSize: 14.sp,
                                  color: const Color(0xff233C7B),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 31.h,
                          ),
                          Text(
                            "ABOUT",
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontWeight: FontWeight.w700,
                              fontSize: 13.sp,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            eventController.upcomingEvent[0].description,
                            style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 16.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 15.h, left: 23.w, right: 23.w),
                  child: Column(
crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Rs ${eventController.upcomingEvent[0].cost}/- per person"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text(
                                "Team",
                                style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Min: ${eventController.upcomingEvent[0].minimumMembers} People",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          ElevatedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                  // shape: MaterialStateProperty<OutlinedBorder>(),

                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff233C7B)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: Text(
                                "APPLY",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.sp,
                                    letterSpacing: 2.w),
                              ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }

  Row eventTitleDate(
      EventController eventController, String month, String day) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              eventController.upcomingEvent[0].domain,
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.w),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              eventController.upcomingEvent[0].title,
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 40.sp),
            )
          ],
        ),
        Container(
          width: 60.w,
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: const Color(0xff233C7B)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                month,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    fontFamily: GoogleFonts.inter().fontFamily),
              ),
              Text(
                day,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 30.sp),
              )
            ],
          ),
        )
      ],
    );
  }

  Material eventImage(
      EventController eventController, String type, String freePaid) {
    return Material(
      elevation: 5,
      child: Container(
        height: 276.h,
        width: 375.w,
        decoration: BoxDecoration(
            // color: Colors.pink,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  eventController.upcomingEvent[0].imageUrl,
                ))),
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        Get.back();
                      },
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
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 9.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Pill(type: type), Pill(type: freePaid)],
                ),
              )
            ],
          ),
        ),
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
        child: Text(
          type,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontFamily: GoogleFonts.inter().fontFamily),
        ));
  }
}
