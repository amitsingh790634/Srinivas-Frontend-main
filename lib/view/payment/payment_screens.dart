import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/payment/payment_controller/payments_controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

import '../edit_card/edit_cards.dart';

class PaymentOptionScreen extends StatefulWidget {
  PaymentOptionScreen({Key? key}) : super(key: key);

  @override
  State<PaymentOptionScreen> createState() => _PaymentOptionScreenState();
}

class _PaymentOptionScreenState extends State<PaymentOptionScreen> {
  final CheckOutController _checkOutController = Get.put(CheckOutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Manage Payment',
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
          child: Stack(children: [
        Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              2.h.heightBox,
              'Wallet'.text.black.size(12.sp).make().pSymmetric(v: 1.h),
              Container(
                // height: 30.h,
                width: 90.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.textgrey)),
                child: Column(
                  children: [
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Radio(
                    //       value: PaymentMethod.paytm,
                    //       activeColor: AppColors.primary,
                    //       groupValue: _checkOutController.selecthosOption.value,
                    //       onChanged: _checkOutController.onchaged,
                    //     ).pSymmetric(h: 5.w),
                    //     'Paytm'.text.medium.black.size(12.sp).make(),
                    //     Image.asset(
                    //       'lib/assets/images/paytm.png',
                    //       height: 4.h,
                    //       fit: BoxFit.fitHeight,
                    //     ),
                    // Row(
                    //   mainAxisAlignment:
                    //       MainAxisAlignment.spaceBetween,
                    //   children: [

                    //   ],
                    // ).pOnly(bottom: 0.h)
                    //   ],
                    // ).pSymmetric(h: 2.w, v: 1.h),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: PaymentMethod.paytm,
                          activeColor: AppColors.primary,
                          groupValue: _checkOutController.selecthosOption.value,
                          onChanged: _checkOutController.onchaged,
                        ).pSymmetric(h: 5.w),
                        SizedBox(
                          width: 60.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  'Paytm'.text.black.medium.size(12.sp).make(),
                                  Image.asset(
                                    'lib/assets/images/paytm.png',
                                    height: 4.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ).pOnly(bottom: 0.h),
                              //'Pay with Mobiwik wallet or UPI on JadiButi for ₹ 899 or more and get 5000 cash back points,offer ends 5th november'.text.size(8.sp).overflow(TextOverflow.clip).color(Color(0xFFB73535)).make()
                            ],
                          ),
                        )
                      ],
                    ).pSymmetric(h: 2.w, v: 1.h),
                    Divider(
                      thickness: 1,
                      height: 1.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: PaymentMethod.mobikwik,
                          activeColor: AppColors.primary,
                          groupValue: _checkOutController.selecthosOption.value,
                          onChanged: _checkOutController.onchaged,
                        ).pSymmetric(h: 5.w),
                        SizedBox(
                          width: 60.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  'Mobiwik'
                                      .text
                                      .black
                                      .medium
                                      .size(12.sp)
                                      .make(),
                                  Image.asset(
                                    'lib/assets/images/mobiquick.png',
                                    height: 4.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ).pOnly(bottom: 0.h),
                              //'Pay with Mobiwik wallet or UPI on JadiButi for ₹ 899 or more and get 5000 cash back points,offer ends 5th november'.text.size(8.sp).overflow(TextOverflow.clip).color(Color(0xFFB73535)).make()
                            ],
                          ),
                        )
                      ],
                    ).pSymmetric(h: 2.w, v: 1.h),
                    Divider(
                      thickness: 1,
                      height: 1.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: PaymentMethod.awazon,
                          activeColor: AppColors.primary,
                          groupValue: _checkOutController.selecthosOption.value,
                          onChanged: _checkOutController.onchaged,
                        ).pSymmetric(h: 5.w),
                        SizedBox(
                          width: 60.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  'Amazon Pay'
                                      .text
                                      .medium
                                      .black
                                      .size(12.sp)
                                      .make(),
                                  Image.asset(
                                    'lib/assets/images/amazon.png',
                                    height: 4.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ).pOnly(bottom: 0.h),
                              //'Pay with Amazon Pay or UPI on JadiButi for ₹ 899 or more and get 5000 cash back points,offer ends 5th november'.text.size(8.sp).overflow(TextOverflow.clip).color(Color(0xFFB73535)).make()
                            ],
                          ),
                        )
                      ],
                    ).pSymmetric(h: 2.w, v: 1.h),
                  ],
                ),
              ),
              'UPI'.text.black.size(12.sp).make().pSymmetric(v: 1.h),
              Container(
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //'Pay with paytm wallet or UPI on JadiButi for ₹ 899 or more and get 5000 cash back points,offer ends 5th november'.text.size(8.sp).overflow(TextOverflow.clip).color(Color(0xFFB73535)).make().pSymmetric(v: 1.h,h: 5.w),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: PaymentMethod.upi,
                          activeColor: AppColors.primary,
                          groupValue: _checkOutController.selecthosOption.value,
                          onChanged: _checkOutController.onchaged,
                        ).pSymmetric(h: 5.w),
                        SizedBox(
                          width: 60.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  'Add new UPI ID'
                                      .text
                                      .black
                                      .size(12.sp)
                                      .make(),
                                  Image.asset(
                                    'lib/assets/images/upi.png',
                                    height: 6.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ).pOnly(bottom: 0.h),
                              'Pay using supported UPI apps'
                                  .text
                                  .black
                                  .size(10.sp)
                                  .make(),
                            ],
                          ),
                        )
                      ],
                    ).pSymmetric(h: 2.w, v: 2.h),
                  ],
                ),
              ),
              'Net Banking & Cards'
                  .text
                  .black
                  .size(12.sp)
                  .make()
                  .pSymmetric(v: 2.h),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: PaymentMethod.netBanking,
                          activeColor: AppColors.primary,
                          groupValue: _checkOutController.selecthosOption.value,
                          onChanged: _checkOutController.onchaged,
                        ).pSymmetric(h: 5.w),
                        SizedBox(
                          width: 60.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              'Net Banking'.text.black.size(12.sp).make(),
                              'Choose Bank'.text.black.size(9.sp).make(),
                            ],
                          ),
                        )
                      ],
                    ).pSymmetric(h: 2.w, v: 1.h),
                    const Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: PaymentMethod.cards,
                          activeColor: AppColors.primary,
                          groupValue: _checkOutController.selecthosOption.value,
                          onChanged: _checkOutController.onchaged,
                        ).pSymmetric(h: 5.w),
                        SizedBox(
                          width: 60.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              'Credit & Debit Cards'
                                  .text
                                  .black
                                  .size(12.sp)
                                  .make(),
                              'Add new card for payment'
                                  .text
                                  .black
                                  .size(9.sp)
                                  .make(),
                            ],
                          ),
                        )
                      ],
                    ).pSymmetric(h: 2.w, v: 1.h).onTap(() {
                      Get.to(() => EditCard());
                    }),
                  ],
                ),
              ),
              8.h.heightBox,
            ],
          ).pSymmetric(h: 5.w),
        ),
        // Positioned(
        //   bottom: 3.h,
        //   left: 5.w,
        //   right: 5.w,
        //   // child: CheckoutButton(price: price+shippingFee)
        //   child: Container(
        //     height: 6.h,
        //     width: 100.w,
        //     decoration: BoxDecoration(
        //         color:Colors.grey,
        //         borderRadius: BorderRadius.all(Radius.circular(50))
        //     ),
        //     child: Row(
        //       children: [
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             "To be Paid".text.white.bold.size(12.sp).semiBold.make(),
        //             "₹ xxx.xx".text.white.bold.size(12.sp).make()
        //           ],
        //         ),
        //         3.w.widthBox,
        //         Container(
        //           margin: EdgeInsets.symmetric(vertical: 0.6.h),
        //           height: 7.h,
        //           child: VerticalDivider(
        //             color: Colors.white,
        //             thickness: 0.3.w,
        //           ),
        //         ),
        //         Spacer(),
        //         "Checkout".text.bold.white.size(14.sp).makeCentered(),
        //         // 1.w.widthBox,
        //         Icon(Icons.arrow_forward, color: Colors.white,size: 2.6.h,)
        //       ],
        //     ).px(5.w),
        //   ).onInkTap(() {
        //     //Get.to(()=> OrderPlacedScreen() );
        //   }),
        // ),
        // App_bar(Icon(Icons.arrow_back,
        //   size: 3.h,
        //   color: Colors.white,
        // ).onInkTap(() {
        //   Get.back();
        // }),
        // "Payment Details".text.white.semiBold.size(15.sp).make(),
      ])),
    );
  }
}
