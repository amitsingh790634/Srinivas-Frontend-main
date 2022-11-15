import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/category_details_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

// ignore: must_be_immutable
class ViewCategoryScreen extends GetView {
  String title;

  ViewCategoryScreen({Key? key, required this.title}) : super(key: key);

  final List categoryName = [
    'Thermometers',
    'Stethoscopes',
    'Weighing Scales',
    'By Aparatus',
    'Nebulizers',
    'Breath & Ear machines',
    'First aid kits',
    'Other machines',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
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
          4.h.heightBox,
          SizedBox(
            height: 80.h,
            width: 100.w,
            child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: (() => Get.to(() => CategoryDetailsScreen(),
                    arguments: categoryName[index])),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                  height: 6.h,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.textblack),
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        categoryName[index],
                      ),
                      Image.asset('lib/assets/images/next.png'),
                    ],
                  ).paddingAll(5),
                ).paddingSymmetric(horizontal: 10),
              ),
              scrollDirection: Axis.vertical,
              itemCount: 8,
            ),
          ),
        ],
      ),
    );
  }
}
