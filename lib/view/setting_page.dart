import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingsScreen extends GetView {
  SettingsScreen({Key? key}) : super(key: key);

  final RxBool isNotification = true.obs;
  final RxBool isPopups = true.obs;
  final RxBool isOrder = false.obs;

  void toggleSwitch({required RxBool on}) => on.value = on.value ? false : true;

  // void toggleSwitch(bool value) {

  //   if(isSwitched == false)
  //   {
  //     Obx(() {
  //       isSwitched = true;
  //     });
  //     print('Switch Button is ON');
  //   }
  //   else
  //   {
  //     setState(() {
  //       isSwitched = false;
  //     });
  //     print('Switch Button is OFF');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.white,
        // leading: InkWell(
        //   // onTap: (() => Get.back()),
        //   child: Image.asset(
        //     'lib/assets/images/menu.png',
        //     color: AppColors.textblack,
        //   ),
        // ).paddingOnly(left: 5),
        // actions: [
        //   const Icon(
        //     Icons.search,
        //     color: AppColors.textgrey,
        //   ).paddingOnly(right: 12)
        // ],
      ),
      body: Column(children: [
        3.h.heightBox,
        const Text(
          'Your App Settings',
          style: TextStyle(color: AppColors.textgrey, fontSize: 16),
        ).objectTopLeft(),
        3.h.heightBox,
        const Text(
          'Notifications',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ).objectTopLeft(),
        1.h.heightBox,
        Row(
          children: [
            const Flexible(
                flex: 5,
                child: Text(
                  'Receive notifications on latest offers and  store updates',
                  style: TextStyle(color: AppColors.textgrey, fontSize: 14),
                )),
            Spacer(),
            Obx(() => Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: -10,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Switch(
                    onChanged: (val) => isNotification.toggle(),
                    value: isNotification.value,
                    activeColor: AppColors.primary,
                    activeTrackColor: Colors.white,
                    inactiveThumbColor: AppColors.textgrey,
                    inactiveTrackColor: Colors.white,
                  ),
                ))
          ],
        ),
        3.h.heightBox,
        const Text(
          'Popups',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ).objectTopLeft(),
        1.h.heightBox,
        Row(
          children: [
            const Flexible(
                flex: 5,
                child: Text(
                  'Disable all popups and adverts from third party vendors',
                  style: TextStyle(color: AppColors.textgrey, fontSize: 14),
                )),
            Spacer(),
            Obx(() => Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: -10,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Switch(
                    onChanged: (val) => isPopups.toggle(),
                    value: isPopups.value,
                    activeColor: AppColors.primary,
                    activeTrackColor: Colors.white,
                    inactiveThumbColor: AppColors.textgrey,
                    inactiveTrackColor: Colors.white,
                  ),
                ))
          ],
        ),
        3.h.heightBox,
        const Text(
          'Order History',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ).objectTopLeft(),
        1.h.heightBox,
        Row(
          children: [
            const Flexible(
                // fit: FlexFit.tight,
                flex: 5,
                child: Text(
                  'Keep your order history on the app unless manually removed',
                  style: TextStyle(color: AppColors.textgrey, fontSize: 14),
                )),
            Spacer(),
            Obx(() => Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: -10,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Switch(
                    onChanged: (val) => isOrder.toggle(),
                    value: isOrder.value,
                    activeColor: AppColors.primary,
                    activeTrackColor: Colors.white,
                    inactiveThumbColor: AppColors.textgrey,
                    inactiveTrackColor: Colors.white,
                  ),
                ))
          ],
        ),
        // 3.h.heightBox,
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
          onPressed: () {},
          child: const Text(
            'UPDATE SETTINGS',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ).w(90.w),
      ]).paddingSymmetric(horizontal: 15).objectTopLeft(),
    );
  }
}
