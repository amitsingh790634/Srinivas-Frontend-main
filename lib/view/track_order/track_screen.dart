import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/track_order/track_map.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../core/app_colors.dart';
import '../bottom_navigation_view.dart';

class TrackOrderScreen extends StatefulWidget {
  final String title = "Order Tracking";

  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  TrackOrderScreenState createState() => TrackOrderScreenState();
}

class TrackOrderScreenState extends State<TrackOrderScreen> {
  //
  final String trackingStatus = 'Dispatching soon';
  final String expectedDate = 'Monday,6th November, 2021';
  final String deliveryAddress =
      'House No. Lane Street, Building,city, Pincode,State';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 15,
            )),
        title: const Text(
          'Tracking Order',
          style: TextStyle(
              color: AppColors.textblack,
              fontWeight: FontWeight.w600,
              fontSize: 19),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    2.h.heightBox,
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Order No.#123-456',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        )),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                '20/18'.text.black.size(11).make(),
                                '10:00AM '.text.black.size(10).make(),
                              ],
                            ),
                            6.w.widthBox,
                            Container(
                                height: 3.h,
                                width: 5.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: VxCircle(
                                  backgroundColor: AppColors.primary,
                                  border: Border.all(color: Colors.white),
                                ).h(1.h).w(1.h)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                'Order Signed'.text.bold.black.size(14).make(),
                                'Melbourn Store'.text.black.size(14).make(),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          //padding: EdgeInsets.zero,
                          width: 2,
                          height: 14.h,
                          color: ((trackingStatus == 'Dispached') ||
                                  (trackingStatus == 'In Transit') ||
                                  (trackingStatus == 'Out for delivery') ||
                                  (trackingStatus == 'Delivered'))
                              ? Colors.amber.shade600
                              : AppColors.primary,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                '20/18'.text.black.size(11).make(),
                                '10:00AM '.text.black.size(10).make(),
                              ],
                            ),
                            6.w.widthBox,
                            Container(
                                height: 3.h,
                                width: 5.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey)),
                                child: VxCircle(
                                  backgroundColor: AppColors.primary,
                                  border: Border.all(color: Colors.white),
                                ).h(1.h).w(1.h)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                'Order Process'.text.bold.black.size(14).make(),
                                'Melbourn Store'.text.black.size(14).make(),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          // padding: EdgeInsets.only(right: 20),
                          width: 2,
                          height: 10.h,
                          color: ((trackingStatus == 'In Transit') ||
                                  (trackingStatus == 'Out for delivery') ||
                                  (trackingStatus == 'Delivered'))
                              ? Colors.amber.shade600
                              : AppColors.primary,
                        ).centered(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                '20/18'.text.black.size(11).make(),
                                '10:00AM '.text.black.size(10).make(),
                              ],
                            ),
                            6.w.widthBox,
                            Container(
                                height: 4.h,
                                width: 6.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey)),
                                child: VxCircle(
                                  backgroundColor: AppColors.primary,
                                  border: Border.all(color: Colors.white),
                                ).h(1.h).w(1.h)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                'Shipped'.text.bold.black.size(14).make(),
                                'Melbourn Store'.text.black.size(14).make(),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: 2,
                          height: 10.h,
                          color: ((trackingStatus == 'Out for delivery') ||
                                  (trackingStatus == 'Delivered'))
                              ? Colors.amber.shade600
                              : Colors.grey.shade300,
                        ).cornerRadius(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                '20/18'.text.white.size(11).make(),
                                '10:00AM '.text.white.size(10).make(),
                              ],
                            ),
                            6.w.widthBox,
                            Container(
                                height: 3.h,
                                width: 5.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: VxCircle(
                                  backgroundColor: Colors.white,
                                  border: Border.all(color: Colors.white),
                                ).h(1.h).w(1.h)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                'Out Of Delivery'
                                    .text
                                    .bold
                                    .black
                                    .size(14)
                                    .make(),
                                'Sydney AU'.text.black.size(14).make(),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: 2,
                          height: 10.h,
                          color: ((trackingStatus == 'Delivered'))
                              ? Colors.amber.shade600
                              : Colors.grey.shade300,
                        ).cornerRadius(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                '20/18'.text.white.size(11).make(),
                                '10:00AM '.text.white.size(10).make(),
                              ],
                            ),
                            6.w.widthBox,
                            Container(
                                height: 3.h,
                                width: 5.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: VxCircle(
                                  backgroundColor: Colors.white,
                                  border: Border.all(color: Colors.white),
                                ).h(1.h).w(1.h)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                'Delivered'.text.bold.black.size(14).make(),
                                'NSW,Sydney,AU'.text.black.size(14).make(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ).pSymmetric(v: 2.h),
                    //'Selected Address'.text.black.size(12.sp).underline.make().pSymmetric(v: 1.h),
                    // Container(
                    //   height: 10.h,
                    //   width: 90.w,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(8)),
                    //     boxShadow: [
                    //       BoxShadow(
                    //           color: Colors.blueGrey,
                    //           blurRadius: 2
                    //       )
                    //     ],
                    //     color: Colors.white,
                    //   ),
                    //
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       'Delivery Address: '.text.semiBold.black.size(12.sp).make(),
                    //       SizedBox(
                    //           height: 7.h,
                    //           width: 50.w,
                    //           child: deliveryAddress.text.gray500.size(11.sp).overflow(TextOverflow.clip).make()),
                    //     ],
                    //   ).pSymmetric(
                    //       h: 2.w,
                    //       v: 1.h
                    //   ),
                    //
                    // ).centered(),

                    2.h.heightBox,
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "CONTINUE SHOPPING",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ).onTap(() {
                        Get.to(BottomNavView());
                      }),
                    ),
                    1.h.heightBox,
                    // TextButton(
                    //     onPressed: () => Get.to(TrackMapScreen()),
                    //     child: Text('See MAP'))
                  ],
                ).pSymmetric(h: 5.w),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
