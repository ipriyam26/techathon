import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/event_controller.dart';
class MinimumPeople extends StatelessWidget {

  const MinimumPeople({
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
    );
  }
}