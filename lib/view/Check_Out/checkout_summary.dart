import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:srinivas_frontend/view/Check_Out/checkout_success_view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

import '../../core/app_colors.dart';
import 'checkbox_controller.dart';

class CheckoutSummaryScreen extends StatelessWidget {
  CheckoutSummaryScreen({Key? key}) : super(key: key);
  final Checkbox1 _checkbox1 = Get.put(Checkbox1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: AppColors.bg, // red as border color
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                  Container(
                    height: 0.2.h,
                    width: 36.w,
                    color: AppColors.primary,
                  ),
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.bg, // red as border color
                        ),
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                  Container(
                    height: 0.2.h,
                    width: 36.w,
                    color: AppColors.primary,
                  ),
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.bg, // red as border color
                        ),
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Address',
                    style: TextStyle(
                      color: AppColors.textblack,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: AppColors.textblack,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Summary',
                    style: TextStyle(
                      color: AppColors.textblack,
                      fontSize: 11,
                    ),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              4.h.heightBox,
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Summary',
                  style: TextStyle(
                    color: AppColors.textblack,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.textgrey, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  leading: Container(
                    width: 70,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/images/dashboard/mask.png'),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(
                    'Loreum Ipsum',
                    style: TextStyle(fontSize: 16, color: AppColors.textblack),
                  ),
                  subtitle: Text(
                    '₹ 565.0',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textblack),
                  ),
                ).centered().h(90),
              ).h(10.h).w(90.w),

              3.h.heightBox,

              Obx(
                () => CircleCheckboxListTile(
                  activeColor: AppColors.primary,
                  title: const Text(
                    'Shipping Address',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textblack,
                    ),
                  ),
                  //controlAffinity: ListTileControlAffinity.leading,
                  value: _checkbox1.value3.value,
                  onChanged: _checkbox1.value3,
                  //secondary: const Icon(Icons.hourglass_empty),
                ),
              ),
              0.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '12,Bay brock,Sharps Rd,keilor East',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: AppColors.textgrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              0.5.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Malburne,Australia',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: AppColors.textgrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              // Divider(
              //   color: Colors.grey.shade700,
              //   height: 2.h,
              //   thickness: 2,
              // ).pSymmetric(h: 4.w),
              Obx(
                () => CircleCheckboxListTile(
                  activeColor: AppColors.primary,

                  title: const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textblack,
                    ),
                  ),
                  //controlAffinity: ListTileControlAffinity.leading,
                  value: _checkbox1.value4.value,
                  onChanged: _checkbox1.value4,

                  //secondary: const Icon(Icons.hourglass_empty),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'lib/assets/images/Icon_MasterCard.png',
                    height: 5.h,
                    // width: 0.5.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Master Card',
                        style: TextStyle(
                          color: AppColors.textgrey,
                          letterSpacing: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '**** **** **** 4543',
                        style: TextStyle(
                          letterSpacing: 1,
                          wordSpacing: 1,
                          color: AppColors.textblack,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ).px16(),
                ],
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 6.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: 'PAY'
                          .text
                          .size(10.sp)
                          .letterSpacing(1.5)
                          .bold
                          .white
                          .make()
                          .centered(),
                    ).onTap(() {
                      Get.to(() => const CheckOutSuccessScreen());

                      //_checkoutPaymentController.Checkcvv();
                      //Get.to(()=> OrderAcepted());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                ],
              ).pSymmetric(h: 4.w),
            ],
          ),
        ),
      ),
    );
  }
}
