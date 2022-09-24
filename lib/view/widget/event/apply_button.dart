import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class ApplyButton extends StatelessWidget {
  const ApplyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
            // shape: MaterialStateProperty<OutlinedBorder>(),

            backgroundColor:
                MaterialStateProperty.all(const Color(0xff233C7B)),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        child: Text(
          "APPLY",
          style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 17.sp,
              letterSpacing: 2.w),
        ));
  }
}