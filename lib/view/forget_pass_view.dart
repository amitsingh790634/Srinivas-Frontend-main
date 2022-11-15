import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/forget_pass_verification_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

class ForgotPasswordScreen extends GetView {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 8.h,
        centerTitle: true,
        title: const Text(
          'Forget Password',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: (() => Get.back()),
          child: Image.asset('lib/assets/images/Icon_left.png'),
        ),
      ),
      body: Column(
        children: [
          8.h.heightBox,
          Flexible(
            fit: FlexFit.loose,
            child: const Text(
              'Enter Your Mobile Number to get the verification code',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textgrey, fontSize: 15),
            ).paddingSymmetric(horizontal: 30),
          ),
          4.h.heightBox,
          const TextField(
            keyboardType: TextInputType.number,
            maxLength: 13,

            // inputFormatters: [Max],
            cursorHeight: 22,
            decoration: InputDecoration(
                counterText: "",
                hintText: 'Mobile No',
                hintStyle: TextStyle(fontSize: 12),
                contentPadding: EdgeInsets.only(left: 2)),
          ).paddingSymmetric(horizontal: 15),
          6.h.heightBox,
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
                const Size(160, 40),
              ),
            ),
            onPressed: () {
              Get.to(() => ForgetPasswordVerificationScreen());
            },
            child: const Text(
              'NEXT',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ).w(90.w),
        ],
      ),
    );
  }
}
