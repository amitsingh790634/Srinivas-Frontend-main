import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/Check_Out/checkout_address_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/app_colors.dart';

class ShoppingCartScreen extends GetView {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool isChecked = false.obs;
    RxInt intCounter = 0.obs;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 8.h,
        title: const Text(
          'Shopping Cart',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppColors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Delete',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            3.h.heightBox,
            SizedBox(
              width: 100.w,
              height: 35.h,
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  width: 95.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                          color: const Color.fromARGB(255, 194, 192, 192),
                          width: 0.3)),
                  child: Row(
                    children: [
                      Container(
                        height: 11.h,
                        width: 22.w,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'lib/assets/images/dashboard/mask.png'),
                                fit: BoxFit.fill)),
                      ).paddingOnly(left: 15, top: 15, bottom: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Loreum Lipsum',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          3.h.heightBox,
                          const Text(
                            '₹ 565.0',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ).paddingOnly(left: 15, top: 15, bottom: 15),
                      // 20.w.widthBox,
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Obx(
                            () => Checkbox(
                              checkColor: AppColors.white,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              activeColor: AppColors.primary,
                              side: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 217, 220, 228)),

                              // fillColor: MaterialStateProperty.all(AppColors.red),
                              // MaterialStateProperty.resolveWith(AppColors.primary),
                              value: isChecked.value,
                              shape: const CircleBorder(),
                              onChanged: (bool? value) => isChecked.toggle(),
                            ),
                          ),

                          // Obx(
                          //   () => ClipRRect(
                          //     clipBehavior: Clip.hardEdge,
                          //     borderRadius: const BorderRadius.all(Radius.circular(20)),
                          //     child: SizedBox(
                          //       width: Checkbox.width,
                          //       height: Checkbox.width,
                          //       child: Container(
                          //         decoration: BoxDecoration(
                          //           border: Border.all(
                          //             width: 0.2,
                          //           ),
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         child: Checkbox(
                          //           value: isChecked.value,
                          //           onChanged: (bool? value) => isChecked.toggle(),
                          //           activeColor: AppColors.primary,
                          //           checkColor: AppColors.white,
                          //           // shape: const CircleBorder(),
                          //           // materialTapTargetSize:
                          //           //     MaterialTapTargetSize.padded,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const Spacer(),

                          Container(
                            width: 20.w,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.primary,
                            ),
                            child: Obx(
                              () => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                      onTap: (() => intCounter--),
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 16,
                                      )),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 3),
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
                        ],
                      )
                          .paddingOnly(right: 15, top: 5, bottom: 15)
                          .objectCenterRight(),
                    ],
                  ),
                ).centered().paddingSymmetric(vertical: 5),
                itemCount: 2,
                scrollDirection: Axis.vertical,
              ),
            ),
            2.h.heightBox,
            const Text(
              'Total',
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textblack,
                  fontWeight: FontWeight.bold),
              // textAlign: TextAlign.left,
            ).objectTopLeft().paddingOnly(left: 15),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sub Total',
                  style: TextStyle(fontSize: 14, color: AppColors.textblack),
                  // textAlign: TextAlign.left,
                ).objectTopLeft().paddingOnly(left: 15),
                const Text(
                  '₹ 565.0',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textblack,
                      fontWeight: FontWeight.bold),
                  // textAlign: TextAlign.left,
                ).objectTopLeft().paddingOnly(right: 15),
              ],
            ),
            1.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Shipping',
                  style: TextStyle(fontSize: 14, color: AppColors.textblack),
                  // textAlign: TextAlign.left,
                ).objectTopLeft().paddingOnly(left: 15),
                const Text(
                  '₹ 0.0',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textblack,
                      fontWeight: FontWeight.bold),
                  // textAlign: TextAlign.left,
                ).objectTopLeft().paddingOnly(right: 15),
              ],
            ),
            8.h.heightBox,
            SizedBox(
              height: 5.h,
              width: 80.w,
              child: TextField(
                // keyboardType: TextInputType.number,
                // maxLength: 13,

                // inputFormatters: [Max],
                cursorHeight: 22,
                decoration: InputDecoration(
                  suffixIcon: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'APPLY',
                        style: TextStyle(color: AppColors.textgrey),
                      )),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 15),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  // counterText: "",
                  hintText: 'Enter Voucher Code',
                  hintStyle:
                      const TextStyle(fontSize: 14, color: AppColors.textgrey),
                  contentPadding: const EdgeInsets.only(left: 15),
                ),
              ),
            ),
            4.h.heightBox,
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.primary),
                foregroundColor: MaterialStateProperty.all(AppColors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                // minimumSize: MaterialStateProperty.all(
                //   const Size(200, 40),
                // ),
              ),
              onPressed: () {
                Get.to(() => CheckoutAddressScreen());
              },
              child: const Text(
                'CHECKOUT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ).centered(),
          ],
        ),
      ),
    );
  }
}
