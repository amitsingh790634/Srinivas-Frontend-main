import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/product_details_view.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/app_colors.dart';

final List prodList = [
  'lib/assets/images/dashboard/oxygen_meter.png',
  'lib/assets/images/dashboard/mask.png',
  'lib/assets/images/dashboard/oxygen_meter.png',
  'lib/assets/images/dashboard/mask.png',
];

class CategoryDetailsScreen extends GetView {
  final String heading = Get.arguments;

  CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: Text(
          heading,
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
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 40,
        children: List.generate(
            12,
            (index) => Stack(
                  // clipBehavior: ,
                  fit: StackFit.loose,
                  clipBehavior: Clip.none,

                  children: [
                    InkWell(
                      onTap: (() => Get.to(ProductDetailScreen())),
                      child: Container(
                        height: 30.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                prodList[2],
                              ),
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fill,
                              scale: 1),
                        ),

                        // child: Image.asset(
                        //     'lib/assets/images/dashboard/slider_1.png'),
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.bggrey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 45.w,
                        height: 11.h,
                        child: Column(
                          children: [
                            Flexible(
                              fit: FlexFit.loose,
                              child: const Text(
                                'Loreum lipsum amet',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                                // maxLines: 2,
                              ).paddingOnly(
                                  left: 12, right: 57, top: 10, bottom: 10),
                            ),
                            0.8.h.heightBox,
                            Row(
                              children: const [
                                Text('565.0 ₹'),
                                Spacer(),
                                ImageIcon(
                                  AssetImage('lib/assets/images/cart.png'),
                                  size: 18,
                                ),
                              ],
                            ).paddingOnly(
                                left: 12, right: 12, top: 0, bottom: 5)
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
                        right: 20,
                        top: 10,
                        child: Icon(Icons.favorite_border_outlined)),
                  ],
                ).marginSymmetric(horizontal: 5)),
      ),
    );
  }
}
