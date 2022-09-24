
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techathon/controller/event_controller.dart';
import 'package:techathon/view/widget/event/apply_button.dart';
import 'package:techathon/view/widget/event/minimum_people.dart';


class InfoApply extends StatelessWidget {
  const InfoApply({
    Key? key,
    required this.eventController,
  }) : super(key: key);

  final EventController eventController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h, left: 23.w, right: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Rs ${eventController.upcomingEvent[0].cost}/- per person"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MinimumPeople(eventController: eventController),
              const ApplyButton()
            ],
          ),
        ],
      ),
    );
  }
}