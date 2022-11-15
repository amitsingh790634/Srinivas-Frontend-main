import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/track_order/track_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:lottie/lottie.dart';

class CheckOutSuccessScreen extends GetView {
  const CheckOutSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 8.h,
        centerTitle: true,
        title: const Text(
          'Checkout',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: (() => Get.back()),
          child: Image.asset('lib/assets/images/Icon_left.png'),
        ),
      ),
      body: Column(
        children: [
          6.h.heightBox,
          Lottie.asset(
            "lib/assets/success.json",
            repeat: true,
            reverse: false,
            animate: true,
            fit: BoxFit.contain,
          ).h(225).w(225).centered(),
          6.h.heightBox,
          const Text(
            'Order Accepted',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.textblack),
          ),
          4.h.heightBox,
          const Text(
            'Your Order No. #123-456',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.textblack),
          ),
          const Text(
            'has been placed',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.textblack),
          ),
          20.h.heightBox,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.primary),
              foregroundColor: MaterialStateProperty.all(AppColors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(90.w, 6.h),
              ),
            ),
            onPressed: () {
              Get.off(() => TrackOrderScreen());
            },
            child: const Text(
              'TRACK ORDER',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ).w(90.w).centered(),
        ],
      ),
    );
  }
}
