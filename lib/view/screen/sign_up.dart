import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:techathon/view/screen/event.dart';

import '../../widgets/button.dart';
import '../../widgets/input.dart';

class SignUp extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController instituteController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/signup.png'),
                        fit: BoxFit.contain)),
                height: 378.h,
                width: 404.w,
              ),
              Padding(
                padding: EdgeInsets.all(12.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign-up',
                      style: TextStyle(
                          color: const Color(
                            0xFF233C7B,
                          ),
                          fontWeight: FontWeight.w500,
                          fontSize: 28.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(controller: nameController, hint: "Full Name"),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(
                        controller: instituteController,
                        hint: "Institute Name"),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(controller: idController, hint: "Institute Id"),
                    SizedBox(
                      height: 10.h,
                    ),
                    textInput(controller: passwordController, hint: "Password"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(const EventScreen());
                          },
                          child: RichText(
                              text: TextSpan(
                                  children: const <TextSpan>[
                                TextSpan(
                                    text: ' Log In',
                                    style: TextStyle(
                                        color: Colors.blueAccent, fontSize: 18))
                              ],
                                  text: 'Already have an account? ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 16.sp))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [(button(text: "Sign-up"))],
              )
            ],
          ),
        ));
  }
}
