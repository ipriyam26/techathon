import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:techathon/controller/event_controller.dart';
import 'package:techathon/view/widget/event/about_section.dart';
import 'package:techathon/view/widget/event/date_maker.dart';
import 'package:techathon/view/widget/event/domain_title.dart';
import 'package:techathon/view/widget/event/location.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.eventController,
  }) : super(key: key);

  final EventController eventController;

  @override
  Widget build(BuildContext context) {
    String month = eventController.upcomingEvent.isEmpty
        ? "Loading"
        : DateFormat('MMM').format(eventController.upcomingEvent[0].eventDate);
    String day = eventController.upcomingEvent.isEmpty
        ? "Loading"
        : DateFormat('d').format(eventController.upcomingEvent[0].eventDate);

    return Container(
      margin: EdgeInsets.only(left: 23.w, top: 22.h, right: 23.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DomainTitle(eventController: eventController),
              DateMaker(month: month, day: day)
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Location(eventController: eventController),
          SizedBox(
            height: 31.h,
          ),
          AboutSection(eventController: eventController)
        ],
      ),
    );
  }
}