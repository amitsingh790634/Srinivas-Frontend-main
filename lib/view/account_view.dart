import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/edit_profile_view.dart';
import 'package:srinivas_frontend/view/login_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

class AccountScreen extends GetView {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Account',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.white,
        // leading: InkWell(
        //   onTap: (() => Get.back()),
        //   child: Image.asset('lib/assets/images/Icon_left.png'),
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            4.h.heightBox,
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/images/avatar.png'),
                2.w.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jameson Dunn',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          wordSpacing: 1),
                    ),
                    1.5.h.heightBox,
                    Text(
                      'jamesondunn@gmail.com',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 0),
                    )
                  ],
                )
              ],
            )),
            2.h.heightBox,
            ListTile(
              onTap: () => Get.to(EditProfileScreen()),
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Image.asset(
                'lib/assets/images/edit.png',
                scale: 1,
              ),
              title: Text('Edit Profile'),
              trailing: Image.asset(
                'lib/assets/images/next.png',
                scale: 1.5,
              ),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Image.asset(
                'lib/assets/images/location.png',
                scale: 1,
              ),
              title: Text('Shipping Address'),
              trailing: Image.asset(
                'lib/assets/images/next.png',
                scale: 1.5,
              ),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Image.asset(
                'lib/assets/images/heart.png',
                scale: 1,
              ),
              title: Row(
                children: [
                  Text('Wishlist'),
                  2.w.widthBox,
                  Image.asset(
                    'lib/assets/images/new.png',
                    scale: 1.5,
                  )
                ],
              ),
              trailing: Image.asset(
                'lib/assets/images/next.png',
                scale: 1.5,
              ),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Image.asset(
                'lib/assets/images/time.png',
                scale: 1,
              ),
              title: const Text('Order History'),
              trailing: Image.asset(
                'lib/assets/images/next.png',
                scale: 1.5,
              ),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Image.asset(
                'lib/assets/images/track.png',
                scale: 1,
              ),
              title: Text('Track Order'),
              trailing: Image.asset(
                'lib/assets/images/next.png',
                scale: 1.5,
              ),
            ),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Image.asset(
                'lib/assets/images/card.png',
                scale: 1,
              ),
              title: Text('Cards'),
              trailing: Image.asset(
                'lib/assets/images/next.png',
                scale: 1.5,
              ),
            ),
            ListTile(
              onTap: () => showModalBottomSheet(
                  backgroundColor: AppColors.white,
                  shape: const RoundedRectangleBorder(
                    // <-- SEE HERE
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      // color: AppColors.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('lib/assets/images/cancel.png')
                                .objectTopRight()
                                .pOnly(right: 30, bottom: 0)
                                .onTap(() => Navigator.pop(context)),
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                const Text('Are you sure you want to logout?')
                                    .objectCenterLeft()
                                    .paddingOnly(left: 60, right: 160),
                              ],
                            ),
                            4.h.heightBox,
                            // ElevatedButton(
                            //   child: const Text('Close BottomSheet'),
                            //   onPressed: () => Navigator.pop(context),
                            // )
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.primary),
                                foregroundColor:
                                    MaterialStateProperty.all(AppColors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                  const Size(200, 40),
                                ),
                              ),
                              onPressed: () {
                                Get.to(() => LoginScreen());
                              },
                              child: const Text(
                                'YES',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ).w(80.w),
                          ],
                        ),
                      ),
                    );
                  }),

              // onTap: () => Get.to(LoginScreen()),
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Image.asset(
                'lib/assets/images/logout.png',
                scale: 1,
              ),
              title: Text('Logout'),
              // trailing: Image.asset(
              //   'lib/assets/images/next.png',
              //   scale: 1.5,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
