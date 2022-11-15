import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/controller/signin_controller.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/bottom_navigation_view.dart';

import 'package:srinivas_frontend/view/login_view.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInScreen extends GetView {
  SignInScreen({Key? key}) : super(key: key);

  final SignInController _signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bg,
        body: Column(
          children: [
            3.5.h.heightBox,
            Image.asset('lib/assets/images/logo_banner.png')
                .scale(scaleValue: 1),
            Container(
              color: AppColors.bg,
              child: Column(
                children: [
                  const Text(
                    'We are available in',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ).objectTopCenter(),
                  2.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Kukatpally',
                        style: TextStyle(color: AppColors.primary),
                      ),
                      Text(
                        'Chandanagar',
                        style: TextStyle(color: AppColors.primary),
                      ),
                      Text(
                        'Gachibowli',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                  1.5.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      // Text('Kukatpally'),
                      Text(
                        'Secunderabad',
                        style: TextStyle(color: AppColors.primary),
                      ),
                      Text(
                        'Sangareddy',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                ],
              ),
            ).paddingSymmetric(horizontal: 5.w, vertical: 0.h),
            Container(
              // width: 70.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
                color: AppColors.bggrey,
              ),
              child: Column(
                children: [
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        '*Surgicals',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                      Text(
                        ' *Rehabilations',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                      Text(
                        ' *Healthcare products',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                    ],
                  ).paddingOnly(left: 10, right: 10, top: 10),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        '*Physio & ortho products',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                      Text(
                        '*Surgical instruments',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                    ],
                  ).paddingOnly(left: 10, right: 10, top: 0),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        '*Disposables',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                      Text(
                        '*Hospital Furniture',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                      Text(
                        '*MCR Footwear',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                    ],
                  ).paddingOnly(left: 10, right: 10, top: 0),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        '*Diabetic Care',
                        style:
                            TextStyle(color: AppColors.textblack, fontSize: 12),
                      ),
                    ],
                  ).paddingOnly(left: 10, right: 10, top: 0, bottom: 10),
                ],
              ),
            ),
            // .paddingSymmetric(horizontal: 5.w, vertical: 0.h),
            6.h.heightBox,
            Column(
              children: [
                const Text(
                  'Buy Products that you need',
                  style: TextStyle(
                      color: AppColors.textblack,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ).objectTopLeft(),
                1.5.h.heightBox,
                const Text(
                  'Find out the products that you need & we deliver into your doorstep',
                  style: TextStyle(
                      color: AppColors.textgrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ).objectTopLeft().paddingSymmetric(horizontal: 5.w),
            2.h.heightBox,
            Container(
              // height: 2.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: AppColors.primary,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 1.h.heightBox,
                  // 5.h.heightBox,
                  ElevatedButton.icon(
                    icon: Image.asset(
                      'lib/assets/images/fb_icon.png',
                      // scale: 0.9,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.white),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.textblack),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      // minimumSize: MaterialStateProperty.all(
                      //   const Size(200, 50),
                      // ),
                    ),
                    onPressed: () {
                      Get.to(() => BottomNavView());
                    },
                    label: const Text('Sign in with Facebook'),
                  ).w(90.w),
                  // 3.h.heightBox,
                  ElevatedButton.icon(
                    icon: Image.asset(
                      'lib/assets/images/google_icon.png',
                      // scale: 1,
                    ).scale(scaleValue: 1.1),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.white),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.textblack),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      // minimumSize: MaterialStateProperty.all(
                      //   const Size(200, 50),
                      // ),
                    ),
                    onPressed: () {
                      Get.to(() => BottomNavView());
                    },
                    label: const Text('Sign in with Google'),
                  ).w(90.w),
                  // 2.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have a account?',
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => LoginScreen());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: AppColors.textblack,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ).w(100.w).expand(),
          ],
        ),
      ),
    );
  }
}
