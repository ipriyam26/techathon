import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:techathon/controller/register_controller.dart';
import 'package:techathon/model/register.dart';

class RadioTile extends StatelessWidget {
  const RadioTile({
    Key? key,
    required this.e,
    required this.controller,
  }) : super(key: key);
  final ApplyingWith e;
  final RegisterController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          // fillColor: MaterialStateProperty.resolveWith((states)
          value: e.name,
          groupValue: controller.applyingWith.name,
          onChanged: (value) {
            controller.applyingWith = e;
            controller.refresh();
          },
        ),
        Text(
          toBeginningOfSentenceCase(e.name.splitMapJoin(
            RegExp(r'[A-Z]'),
            onMatch: (m) => ' ${m.group(0)}',
            onNonMatch: (n) => n,
          ))!,
          style: TextStyle(
              fontFamily: GoogleFonts.raleway().fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: const Color(0xff888888)),
        ),
      ],
    );
  }
}
