import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:techathon/controller/register_controller.dart';
import 'package:techathon/model/register.dart';
import 'package:techathon/view/widget/register/radio_tile.dart';


class ApplyWithWidget extends StatelessWidget {
  const ApplyWithWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(

      init: RegisterController(),
      initState: (_) {},
      builder: (controller) {
        return Container(
          height: 70.h,
          // color: Colors.amber,
          margin: EdgeInsets.only(left: 20.h),
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            children: ApplyingWith.values.map((e) {
              return RadioTile(
                e: e,
                controller: controller,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
