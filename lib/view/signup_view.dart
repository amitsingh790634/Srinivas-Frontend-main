import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/signup_verfication_view.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends GetView {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 8.h,
        title: const Text(
          'Create Account',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: (() => Get.back()),
          child: Image.asset('lib/assets/images/Icon_left.png'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              7.h.heightBox,
              const Text(
                'User Name',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              1.25.h.heightBox,
              const SizedBox(
                height: 42,
                child: TextField(
                  // keyboardType: TextInputType.number,
                  // maxLength: 13,

                  // inputFormatters: [Max],
                  cursorHeight: 22,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 15),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    // counterText: "",
                    hintText: 'Enter Your Name',
                    hintStyle:
                        TextStyle(fontSize: 12, color: AppColors.textgrey),
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
              2.75.h.heightBox,
              const Text(
                'Mobile Number',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              1.25.h.heightBox,
              const SizedBox(
                height: 42,
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 13,

                  // inputFormatters: [Max],
                  cursorHeight: 22,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    counterText: "",
                    hintText: '+91   Enter Your Mobile Number',
                    hintStyle:
                        TextStyle(fontSize: 12, color: AppColors.textgrey),
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
              2.75.h.heightBox,
              const Text(
                'Password',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              1.25.h.heightBox,
              const SizedBox(
                height: 42,
                child: TextField(
                  // keyboardType: TextInputType.number,
                  // maxLength: 13,

                  // inputFormatters: [Max],
                  cursorHeight: 22,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      // counterText: "",
                      hintText: 'Enter Password',
                      hintStyle:
                          TextStyle(fontSize: 12, color: AppColors.textgrey),
                      contentPadding: EdgeInsets.only(left: 15)),
                ),
              ),
              14.h.heightBox,
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.primary),
                  foregroundColor: MaterialStateProperty.all(AppColors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    const Size(200, 40),
                  ),
                ),
                onPressed: () {
                  Get.to(() => SignUpVerificationScreen());
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ).w(90.w).centered(),
            ],
          ).paddingAll(5),
        ),
      ),
    );
  }
}
