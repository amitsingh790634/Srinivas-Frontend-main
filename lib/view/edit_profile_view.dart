import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/bottom_navigation_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

class EditProfileScreen extends GetView {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Edit Profile',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            2.h.heightBox,
            Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      'lib/assets/images/profile.png',
                    ),
                    fit: BoxFit.fill),
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
                border: Border.all(color: const Color(0xffDDDDDD), width: 1),
              ),
            ).centered(),
            TextButton(
              onPressed: (() => {}),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              child: const Text('Change Profile'),
            ).centered(),
            const TextField(
              // inputFormatters: [Max],
              cursorHeight: 22,
              decoration: InputDecoration(
                  counterText: "",
                  hintText: 'Name',
                  hintStyle: TextStyle(fontSize: 12),
                  contentPadding: EdgeInsets.only(left: 2)),
            ).paddingSymmetric(horizontal: 20),
            const TextField(
              cursorHeight: 22,
              // controller: loginController.phone,
              maxLength: 13,
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                  counterText: "",
                  hintText: 'Mobile Number',
                  hintStyle: TextStyle(fontSize: 12),
                  contentPadding: EdgeInsets.only(left: 2)),
            ).paddingSymmetric(horizontal: 20),
            const TextField(
              obscureText: true,

              // inputFormatters: [Max],
              cursorHeight: 22,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 12),
                  contentPadding: EdgeInsets.only(left: 2)),
            ).paddingSymmetric(horizontal: 20),
            20.h.heightBox,
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
              onPressed: () => Get.to(BottomNavView()),
              child: const Text(
                'UPDATE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ).w(90.w),
          ],
        ),
      ),
    );
  }
}
