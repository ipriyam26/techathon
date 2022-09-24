import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techathon/controller/event_controller.dart';
import 'package:techathon/view/widget/event/action_button_row.dart';
import 'package:techathon/view/widget/event/pill.dart';

class InfoImage extends StatelessWidget {
  const InfoImage({
    Key? key,
    required this.eventController,
  }) : super(key: key);

  final EventController eventController;

  @override
  Widget build(BuildContext context) {
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
    return Material(
      elevation: 5,
      child: Container(
        height: 276.h,
        width: 375.w,
        decoration: BoxDecoration(
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
              const ActionButtonRow(),
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