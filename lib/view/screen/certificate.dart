import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:techathon/controller/certificate_controller.dart';
import 'package:techathon/view/widget/event/date_maker.dart';
import 'package:techathon/view/widget/history/history_item.dart';
import 'package:techathon/view/widget/register/top_bar.dart';

class CertificateScreen extends StatelessWidget {
  CertificateScreen({Key? key}) : super(key: key);

  CertificateController certificateController =
      Get.put(CertificateController());
  @override
  Widget build(BuildContext context) {
    // String month = eventController.upcomingEvent.isEmpty
    //     ? "Loading"
    //     : DateFormat('MMM').format(eventController.upcomingEvent[0].eventDate);
    // String day = eventController.upcomingEvent.isEmpty
    //     ? "Loading"
    //     : DateFormat('d').format(eventController.upcomingEvent[0].eventDate);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopAppBar(title: "Certificate"),
          Container(
            height: 690.h,
            // color: Colors.pink,
            child: ListView(
              shrinkWrap: true,
              children: [
...certificateController.certificateList.map((certificate) {
return history_item(isCertificate: certificate.status!=1 , color: (0xFF00C838), location: certificate.location, festName: certificate.title, festCategory: certificate.domain, festDate: certificate.completedDate);
} ).toList(),



                Container(
          
                  margin: EdgeInsets.only(left: 12.w,),
                  child: Text(
                    "My Certificate",
                    style: TextStyle(
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                certificateController.certificateList.isEmpty
              ? const CircularProgressIndicator()
              : SizedBox(
                height: 170.h,

                child: ListView(scrollDirection: Axis.horizontal, children: [
                    ...certificateController.certificateList.map((e) {
                      return Material(
                        elevation: 10,
                        child: Container(
                          height: 162.h,
                          width: 250.w,
                          margin: EdgeInsets.only(right:10.w),
                          padding: EdgeInsets.only(
                              left: 190.w, top: 10.h, bottom: 88.h, right: 10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(certificateController
                                      .certificateList[0].downloadLink!))),
                          child: DateMaker(
                              month: DateFormat('MMM').format(
                                  certificateController
                                      .certificateList[0].completedDate),
                              day: DateFormat('d').format(certificateController
                                  .certificateList[0].completedDate)),
                        ),
                      );
                    }).toList()
                  ]
                  
                  ),
              )
              ],
          ),
            ),
          
        ],
      ),
    );
  }
}
