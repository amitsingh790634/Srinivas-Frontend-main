import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

class NotificationScreen extends GetView {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Notification',
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
      ),
      // body: Column(
      //   children: [
      //     2.h.heightBox,
      //     SizedBox(
      //       width: 100.w,
      //       child: ListView.builder(
      //         itemBuilder: (context, index) {
      //           return Text('Hello');
      //         },
      //         itemCount: 10,
      //         scrollDirection: Axis.vertical,
      //       ),
      //     ).expand()
      //   ],
      // ),
      body: Column(
        children: [
          SizedBox(
            width: 100.w,
            child: ListView.builder(
              itemBuilder: ((context, index) => ListTile(
                    contentPadding: const EdgeInsets.fromLTRB(15, 8, 10, 8),
                    isThreeLine: true,
                    // dense: true,
                    leading: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'lib/assets/images/dashboard/product/5.png',
                            ),
                            fit: BoxFit.fill),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(color: AppColors.black, width: 1),
                      ),
                    ).w(40).h(40),
                    title: const Text(
                      'Loreum ipsum dolor sit amit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textblack,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: const Text(
                      'Loreum ipsum dolor sit amet, consuter sadipcing eliter sed dam nonumy eirmod',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.textblack,
                        fontSize: 12,
                      ),
                    ),
                    trailing: const Text(
                      '8:35 PM',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textblack),
                    ),
                    visualDensity: VisualDensity.standard,
                  )),
              itemCount: 12,
              scrollDirection: Axis.vertical,
            ),
          ).expand(),
        ],
      ).h(100.h).w(95.w),
    );
  }
}
