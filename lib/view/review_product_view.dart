import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/product_details_view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../core/app_colors.dart';

class ReviewProductScreen extends GetView {
  const ReviewProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Rate Product',
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
          15.h.heightBox,
          Flex(direction: Axis.vertical, children: [
            Text(
              'How was your experience with the product ?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )
          ]).paddingSymmetric(horizontal: 80),
          2.h.heightBox,

          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // rateProductController.rating = rating.toInt();
              // rating1 = rating.toInt();
              // // print(rating);
            },
          ),

          // VxRating(
          //   size: 40,
          //   count: 5,
          //   normalImage: Image.asset('lib/assets/images/star.png'),
          //   selectImage: Image.asset('lib/assets/images/star_filled.png'),
          //   // normalColor: AppColors.white,
          //   selectionColor: Colors.yellow,
          //   // // maxRating: 5,
          //   isSelectable: true,
          //   onRatingUpdate: (value) => {},
          // ).centered(),

          5.h.heightBox,

          Container(
            height: 20.h,
            width: 90.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.sp)),
            child: TextField(
              // controller: rateProductController.comment,
              decoration: const InputDecoration(
                hintText: "Write a Comment ",
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
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
              Get.to(() => ProductDetailScreen());
            },
            child: const Text(
              'SUBMIT',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ).w(30.w),
        ],
      ),
    );
  }
}
