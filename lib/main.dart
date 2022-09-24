import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:techathon/widgets/event_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, a) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: Container(
                  color: Colors.black,
                  child: CarouselSlider(
                    options: CarouselOptions(aspectRatio: 1.2),
                    items: const [
                      EventContainer(
                        date: '2022-09-29',
                        name: 'Tech Fest',
                        paid: true,
                        teamCategory: 'Team & Solo',
                        location: 'Bennett University',
                        participantLength: 20,
                        img_url: 'https://i.imgur.com/CzXTtJV.jpg',
                      ),
                      EventContainer(
                        date: '2022-09-29',
                        name: 'Tech Fest',
                        paid: true,
                        teamCategory: 'Team & Solo',
                        location: 'Bennett University',
                        participantLength: 20,
                        img_url: 'https://i.imgur.com/CzXTtJV.jpg',
                      ),
                      EventContainer(
                        date: '2022-09-29',
                        name: 'Tech Fest',
                        paid: true,
                        teamCategory: 'Team & Solo',
                        location: 'Bennett University',
                        participantLength: 20,
                        img_url: 'https://i.imgur.com/CzXTtJV.jpg',
                      ),
                      EventContainer(
                        date: '2022-09-29',
                        name: 'Tech Fest',
                        paid: true,
                        teamCategory: 'Team & Solo',
                        location: 'Bennett University',
                        participantLength: 20,
                        img_url: 'https://i.imgur.com/CzXTtJV.jpg',
                      )
                    ],
                  )));
        });
  }
}
