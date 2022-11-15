import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/controller/login_controller.dart';
import 'package:srinivas_frontend/view/bottom_navigation_view.dart';
import 'package:srinivas_frontend/view/forget_pass_view.dart';
import 'package:srinivas_frontend/view/signup_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

class LoginScreen extends GetView {
  LoginScreen({Key? key}) : super(key: key);

  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          2.h.heightBox,
          Image.asset('lib/assets/images/logo_banner.png'),
          Container(
            color: AppColors.white,
            child: Column(
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ).objectTopCenter(),
                1.5.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: const Text(
                        'Lorem ipsum dolor sit amet. In dolores eveniet aut eveniet nemo ut corrupti ',
                        style: TextStyle(
                            color: AppColors.textgrey,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ).marginSymmetric(horizontal: 4.w),
                    ),
                  ],
                ),
                1.5.h.heightBox,
              ],
            ).marginSymmetric(vertical: 1.5.h),
          )
              .paddingSymmetric(horizontal: 5.w, vertical: 0.h)
              // .h(15.h)
              .w(100.w)
              .centered(),
          Container(
            color: AppColors.white,
            child: Column(
              children: const [
                TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 13,

                  // inputFormatters: [Max],
                  cursorHeight: 22,
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: 'Mobile No',
                      hintStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 2)),
                ),
                TextField(
                  cursorHeight: 22,
                  // controller: loginController.phone,
                  obscureText: true,

                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 2)),
                ),
              ],
            ),
          )
              .paddingSymmetric(horizontal: 5.w, vertical: 0.h)
              // .h(16.h)
              .w(100.w)
              .centered(),
          5.h.heightBox,
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
              Get.to(() => BottomNavView());
            },
            child: const Text(
              'SIGN IN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ).w(90.w),
          TextButton(
            onPressed: () {
              Get.to(() => const ForgotPasswordScreen());
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
          ),
          // 20.h.heightBox,
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have any account?',
                style: TextStyle(
                    color: AppColors.textblack,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
                child: const Text(
                  'Signup',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
