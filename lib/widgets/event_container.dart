import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class EventContainer extends StatefulWidget {
  const EventContainer(
      {super.key,
      required this.name,
      required this.date,
      required this.location,
      required this.paid,
      required this.teamCategory,
      required this.participantLength,
      required this.img_url});
  final String name;
  final String date;
  final String location;
  final bool paid;
  final String img_url;
  final String teamCategory;
  final int participantLength;

  @override
  State<EventContainer> createState() => _EventContainerState();
}

class _EventContainerState extends State<EventContainer> {
  String? formattedDate;

  List<Color> color = [
    Colors.pink,
    Colors.yellow,
    Colors.purple,
    Colors.blue,
    Colors.grey
  ];
  List<String> usr_profile_list = [
    'https://i.imgur.com/OB0y6MR.jpg',
    'https://farm2.staticflickr.com/1533/26541536141_41abe98db3_z_d.jpg',
    'https://i.imgur.com/CzXTtJV.jpg',
    'https://farm4.staticflickr.com/3049/2327691528_f060ee2d1f.jpg',
    'https://i.imgur.com/OB0y6MR.jpg'
  ];

  int x = 10;
  int? plength;
  @override
  void initState() {
    DateTime parseDt = DateTime.parse(widget.date);
    formattedDate = DateFormat('d,MMMM,yyyy').format(parseDt);
    plength = widget.participantLength - 5;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Theme.of(context).disabledColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: 367.h,
        width: 253.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200.h,
                  width: 253.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.img_url))),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 30.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                            color: const Color(0xff233C7B),
                            borderRadius: BorderRadius.circular(18.sp)),
                        child: Center(
                            child: Text(
                          "Solo & Team",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
                widget.paid
                    ? Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 30.h,
                              width: 65.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xff233C7B),
                                  borderRadius: BorderRadius.circular(18.sp)),
                              child: Center(
                                  child: Text("Paid",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(color: Colors.white))),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        color: Colors.transparent,
                      )
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          formattedDate as String,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          widget.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 15.sp,
                            ),
                            Text(
                              widget.location,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.purpleAccent,
                                  ),
                                  for (double i = 0; i <= 5; i++)
                                    Positioned(
                                      left: 20 * i,
                                      child: i != 5
                                          ? CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  usr_profile_list[i as int]),
                                            )
                                          : CircleAvatar(
                                              backgroundColor:
                                                  const Color(0xffC5D5FF),
                                              child: Center(
                                                child: Text(
                                                  '''$plength+''',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .subtitle1!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: const Color(
                                                              0xff233C7B)),
                                                ),
                                              ),
                                            ),
                                    ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    minimumSize: MaterialStateProperty.all(
                                        Size(100.w, 40.h)),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xFFC5D5FF))),
                                onPressed: (() {}),
                                child: Center(
                                  child: Text(
                                    "Interested",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff233C7B)),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
