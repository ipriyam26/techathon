import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:techathon/controller/event_controller.dart';
import 'package:techathon/view/widget/event/info.dart';
import 'package:techathon/view/widget/event/info_apply.dart';
import 'package:techathon/view/widget/event/info_image.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EventController eventController = Get.put(EventController());

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
                    InfoImage(eventController: eventController),
                    Info(eventController: eventController),
                  ],
                ),
                InfoApply(eventController: eventController)
              ],
            ),
    );
  }
}




















