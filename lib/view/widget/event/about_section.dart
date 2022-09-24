import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/event_controller.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
    required this.eventController,
  }) : super(key: key);

  final EventController eventController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              fontFamily: GoogleFonts.inter().fontFamily, fontSize: 16.sp),
        ),
      ],
    );
  }
}