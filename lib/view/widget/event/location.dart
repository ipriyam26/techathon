import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/event_controller.dart';

class Location extends StatelessWidget {
  const Location({
    Key? key,
    required this.eventController,
  }) : super(key: key);

  final EventController eventController;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}