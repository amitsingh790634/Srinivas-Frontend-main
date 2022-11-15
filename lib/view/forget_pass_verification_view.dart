import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/new_password_view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:otp_text_field/otp_field.dart';

// ignore: must_be_immutable
class ForgetPasswordVerificationScreen extends GetView {
  ForgetPasswordVerificationScreen({Key? key}) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  var code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 8.h,
        title: const Text(
          'Verification',
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
              Flexible(
                child: const Text(
                  'A 5-Digit PIN has been sent to your phone no. Enter it below to continue',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textblack,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ).marginSymmetric(horizontal: 4.w),
              ),
              5.h.heightBox,
              // Row(
              //   children: const [
              //     Text('Hello'),
              //     Text('Hello'),
              //     Text('Hello'),
              //     Text('Hello'),
              //     Text('Hello'),
              //   ],
              // ),
              OTPTextField(
                  // controller: otpController,
                  length: 5,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldWidth: 50,
                  keyboardType: TextInputType.number,
                  fieldStyle: FieldStyle.box,
                  otpFieldStyle: OtpFieldStyle(
                      enabledBorderColor: AppColors.textgrey,
                      // borderColor: AppColors.red,
                      focusBorderColor: AppColors.primary),
                  outlineBorderRadius: 100,
                  contentPadding: const EdgeInsets.only(top: 4.6, left: 4.4),
                  style: const TextStyle(fontSize: 17),
                  onChanged: (pin) {
                    code = pin;
                    // print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    code = pin;
                    // print("Completed: " + code);
                  }),
              30.h.heightBox,
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
                  Get.to(() => const NewPasswordScreen());
                },
                child: const Text(
                  'VERIFY',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ).w(90.w).centered(),
            ],
          ).paddingAll(5),
        ).h(100.h),
      ),
    );
  }
}
