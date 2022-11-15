import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/all_rating_view.dart';
import 'package:srinivas_frontend/view/review_product_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

final List prodList = [
  'lib/assets/images/dashboard/oxygen_meter.png',
  'lib/assets/images/dashboard/mask.png',
  'lib/assets/images/dashboard/oxygen_meter.png',
  'lib/assets/images/dashboard/mask.png',
];

class ProductDetailScreen extends GetView {
  ProductDetailScreen({Key? key}) : super(key: key);

  RxInt intCounter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          '',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: (() => Get.back()),
          child: Image.asset('lib/assets/images/Icon_left.png'),
        ),
        actions: [
          const Icon(
            Icons.favorite_border_outlined,
            color: AppColors.black,
          ).paddingOnly(right: 15)
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          2.h.heightBox,
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                // height: 30.h,
                width: 50.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/images/dashboard/oxy_flow.png',
                      ),
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      scale: 1),
                ),
              ).paddingSymmetric(horizontal: 6),
              Container(
                // height: 30.h,
                width: 50.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/images/dashboard/oxy_flow.png',
                      ),
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      scale: 1),
                ),
              ).paddingSymmetric(horizontal: 6),
              Container(
                // height: 30.h,
                width: 50.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/images/dashboard/oxy_flow.png',
                      ),
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      scale: 1),
                ),
              ).paddingSymmetric(horizontal: 6),
              Container(
                // height: 30.h,
                width: 50.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/images/dashboard/oxy_flow.png',
                      ),
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      scale: 1),
                ),
              ).paddingSymmetric(horizontal: 6),
              Container(
                // height: 30.h,
                width: 50.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/images/dashboard/oxy_flow.png',
                      ),
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      scale: 1),
                ),
              ).paddingSymmetric(horizontal: 6),
            ],
          ).h(35.h),
          4.h.heightBox,
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 2.8.h,
              ),
              // const Spacer(),
              1.5.w.widthBox,
              const Text(
                '4.2+',
                style: TextStyle(fontSize: 13),
              ),
              3.w.widthBox,
              const Text(
                'Reviews',
                style: TextStyle(fontSize: 14, color: AppColors.primary),
              )
            ],
          ).paddingSymmetric(horizontal: 20),
          2.h.heightBox,
          const Text(
            'Loreum Lipsum',
            style: TextStyle(
                color: AppColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ).objectCenterLeft().paddingSymmetric(horizontal: 20),
          2.h.heightBox,
          Flex(
            direction: Axis.vertical,
            children: const [
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s..',
                style: TextStyle(color: AppColors.textgrey, fontSize: 14),
              ),
            ],
          ).paddingSymmetric(horizontal: 20),
          0.3.h.heightBox,
          Row(
            children: [
              const Text(
                '₹ 599.50',
                style: TextStyle(color: AppColors.primary, fontSize: 16),
              ),
              2.5.w.widthBox,
              const Text(
                '(include GST 10%)',
                style: TextStyle(color: AppColors.textgrey, fontSize: 12),
              )
            ],
          ).paddingSymmetric(horizontal: 20),
          2.h.heightBox,
          const Text(
            'Select Quantity:',
            style: TextStyle(
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ).objectCenterLeft().paddingSymmetric(horizontal: 20),
          1.h.heightBox,
          Row(
            children: [
              Container(
                width: 20.w,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.primary,
                ),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: (() => intCounter--),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 16,
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.primary),
                        child: Text(
                          intCounter.value.toString(),
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            // backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: (() => intCounter++),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          )),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(color: Colors.red)))),
                onPressed: () {},
                child: const Text('ADD TO CART'),
              )
            ],
          ).paddingSymmetric(horizontal: 20),
          2.h.heightBox,
          const Text(
            'You May Also Like',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black),
          ).objectCenterLeft().paddingSymmetric(horizontal: 20),
          1.h.heightBox,
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) => InkWell(
              onTap: (() => Get.to(ProductDetailScreen())),
              child: Stack(
                // clipBehavior: ,
                fit: StackFit.loose,
                clipBehavior: Clip.none,

                children: [
                  Container(
                    height: 258,
                    width: 176,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            prodList[index % 4],
                          ),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fill,
                          scale: 1),
                    ),

                    // child: Image.asset(
                    //     'lib/assets/images/dashboard/slider_1.png'),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 176,
                      height: 94,
                      child: Column(
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: const Text(
                              'Loreum lipsum amet',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                              // maxLines: 2,
                            ).paddingOnly(left: 12, right: 57, top: 15),
                          ),
                          1.h.heightBox,
                          Row(
                            children: const [
                              Text('565.0 ₹'),
                              Spacer(),
                              ImageIcon(
                                AssetImage('lib/assets/images/cart.png'),
                                size: 18,
                              ),
                            ],
                          ).paddingSymmetric(horizontal: 12, vertical: 0)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      height: 28,
                      width: 60,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 2.5.h,
                          ),
                          const Spacer(),
                          const Text(
                            '4.2+',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ).paddingSymmetric(horizontal: 5),
                    ),
                  ),
                  const Positioned(
                      right: 10,
                      top: 10,
                      child: Icon(Icons.favorite_border_outlined)),
                ],
              ).marginSymmetric(horizontal: 5),
            ),
          ).h(35.h),
          2.h.heightBox,
          Row(
            children: [
              const Text(
                'Reviews :',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
              Spacer(),
              TextButton(
                onPressed: () => Get.to(ReviewProductScreen()),
                child: Text('Add your comment'),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      AppColors.primary,
                    ),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(fontWeight: FontWeight.w400))),
              ),
            ],
          ).paddingSymmetric(horizontal: 20),
          Divider(
            color: AppColors.textgrey,
            height: 0.8,
            // thickness: 0.8,
            endIndent: 30,
            indent: 30,
          ),
          AllratingView().h(30.h),
          5.h.heightBox,
        ],
      )),
    );
  }
}
