
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/event_controller.dart';

class DomainTitle extends StatelessWidget {
  const DomainTitle({
    Key? key,
    required this.eventController,
  }) : super(key: key);

  final EventController eventController;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}