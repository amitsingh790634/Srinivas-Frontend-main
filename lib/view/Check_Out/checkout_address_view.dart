import 'package:get/get.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/Check_Out/check_out_payment.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:circle_checkbox/redev_checkbox.dart';

import 'checkbox_controller.dart';
import 'checkout_address_controller.dart';

class CheckoutAddressScreen extends StatelessWidget {
  CheckoutAddressScreen({Key? key}) : super(key: key);
  final Checkbox1 _checkbox1 = Get.put(Checkbox1());
  final CheckoutAddressController _checkoutAddressController =
      Get.put(CheckoutAddressController());

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
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _checkoutAddressController.Checkaddressform,
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
                      height: 1,
                      width: 36.w,
                      color: AppColors.bg,
                    ),
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
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 36.w,
                      color: AppColors.bg,
                    ),
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
                            color: Colors.white,
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
                        color: AppColors.textgrey,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Summary',
                      style: TextStyle(
                        color: AppColors.textgrey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                2.h.heightBox,
                Obx(
                  () => CircleCheckboxListTile(
                    activeColor: AppColors.primary,
                    title: const Text(
                      'Billing address is the same as delivery',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.textblack,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _checkbox1.value1.value,
                    onChanged: _checkbox1.value1,
                    //secondary: const Icon(Icons.hourglass_empty),
                  ),
                ),
                1.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Street 1',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  //validator: _checkoutAddressController.validatestreet1,
                  controller: _checkoutAddressController.Street1,
                  decoration: const InputDecoration(
                    hintText: 'Street, Lane',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.bg,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textgrey,
                      ),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Street 2',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  //validator: _checkoutAddressController.validatestreet2,
                  controller: _checkoutAddressController.street2,
                  decoration: const InputDecoration(
                    hintText: 'XYZ Road',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.bg,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textgrey,
                      ),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'City',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  //validator: _checkoutAddressController.validatecity,
                  controller: _checkoutAddressController.city,
                  decoration: const InputDecoration(
                    hintText: 'Delhi',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.bg),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textgrey,
                      ),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'State',
                          style: TextStyle(fontSize: 10),
                        )),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Country',
                          style: TextStyle(fontSize: 10),
                        )).pSymmetric(h: 34.w),
                  ],
                ).pSymmetric(h: 4.w),
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        //validator: _checkoutAddressController.validatestate,
                        controller: _checkoutAddressController.state,
                        decoration: const InputDecoration(
                          hintText: 'Delhi',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.bg),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.textgrey),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        // //validator: _checkoutAddressController.validateCountry,
                        controller: _checkoutAddressController.Country,
                        decoration: const InputDecoration(
                          hintText: 'India',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.bg),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.textgrey,
                            ),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                  ],
                ),
                5.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(bottom: 2.h),
                    //   child: Container(
                    //     height: 52,
                    //     width: 170,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       border: Border.all(color: Colors.black),
                    //       borderRadius: BorderRadius.circular(4.sp),
                    //     ),
                    //     child: 'BACK'
                    //         .text
                    //         .size(10.sp)
                    //         .letterSpacing(1.5)
                    //         .bold
                    //         .black
                    //         .make()
                    //         .centered(),
                    //   ).onTap(() {
                    //     Get.back();

                    //     //_signupController.CheckSignup();
                    //     //Get.to(()=> CheckoutScreen());
                    //     //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    //   }),
                    // ),
                    Center(
                      child: Container(
                        height: 6.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: 'NEXT'
                            .text
                            .size(8.sp)
                            .letterSpacing(1.5)
                            .bold
                            .white
                            .make()
                            .centered(),
                      ).onTap(() {
                        // _checkoutAddressController.CheckoutAddress();
                        Get.to(() => CheckOutPayment());
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                      }),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                1.h.heightBox,
                0.5.h.heightBox,
                0.5.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
