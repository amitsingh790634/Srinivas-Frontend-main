import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/account_view.dart';
import 'package:srinivas_frontend/view/dashboard.dart';
import 'package:srinivas_frontend/view/edit_profile_view.dart';
import 'package:srinivas_frontend/view/setting_page.dart';
import 'package:srinivas_frontend/view/shopping_cart_view.dart';

import '../controller/bottom_navigation_controller.dart';

class BottomNavView extends GetView {
  final TextStyle unselectedLabelStyle = const TextStyle(
      color: AppColors.white, fontWeight: FontWeight.w500, fontSize: 10);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: AppColors.primary, fontWeight: FontWeight.w500, fontSize: 12);

  final IconThemeData unselectedIconStyle = IconThemeData(
    color: AppColors.black.withOpacity(0.3),
    size: 18,
  );

  final IconThemeData selectedIconStyle =
      const IconThemeData(color: AppColors.primary, size: 20);

  BottomNavView({Key? key}) : super(key: key);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            border: Border.all(color: AppColors.primary),
            // boxShadow: [
            //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            // ],
          ),
          height: 8.h,
          child: ClipRRect(
            borderRadius:const  BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
            child: BottomNavigationBar(
              // elevation: 5,
              // iconSize: 24,
              showUnselectedLabels: true,

              showSelectedLabels: true,
              onTap: landingPageController.changeTabIndex,
              currentIndex: landingPageController.tabIndex.value,
              backgroundColor: AppColors.white,
              // unselectedItemColor: AppColors.white.withOpacity(0.3),
              selectedItemColor: AppColors.primary,
              unselectedLabelStyle: unselectedLabelStyle,
              selectedLabelStyle: selectedLabelStyle,
              unselectedIconTheme: unselectedIconStyle,
              selectedIconTheme: selectedIconStyle,
              items: [
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('lib/assets/images/home.png'),
                    size: 18,
                    // semanticLabel: 'Home',
                  ).marginOnly(top: 8),

                  label: 'Home',
                  // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('lib/assets/images/cart.png'),
                    size: 18,
                  ).marginOnly(top: 8),
                  label: 'Cart',
                  // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('lib/assets/images/user.png'),
                    size: 18,
                  ).marginOnly(top: 8),
                  label: 'Account',
                  // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('lib/assets/images/settings.png'),
                    size: 18,
                  ).marginOnly(top: 8),
                  label: 'Settings',
                  // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavViewController bottomNavViewController =
        Get.put(BottomNavViewController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavViewController),
      body: Obx(() => IndexedStack(
            index: bottomNavViewController.tabIndex.value,
            children: [
              DashboardScreen(),
              const ShoppingCartScreen(),
              const AccountScreen
              (),
              SettingsScreen(),
            ],
          )),
    ));
  }
}
