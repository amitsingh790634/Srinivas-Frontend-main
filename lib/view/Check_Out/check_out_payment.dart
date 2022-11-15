import 'package:circle_checkbox/redev_checkbox.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/Check_Out/checkout_summary.dart';
import 'package:srinivas_frontend/view/payment/payment_screens.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import 'checkbox_controller.dart';
import 'checkout_payment_controller.dart';

class CheckOutPayment extends StatelessWidget {
  CheckOutPayment({Key? key}) : super(key: key);
  final Checkbox1 _checkbox1 = Get.put(Checkbox1());
  final CheckoutPaymentController _checkoutPaymentController =
      Get.put(CheckoutPaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Checkout',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _checkoutPaymentController.Checkpaymentform,
            child: Column(
              children: [
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.bg, // red as border color
                          ),
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.bg, // red as border color
                            ),
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 36.w,
                      color: AppColors.primary,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.bg, // red as border color
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 36.w,
                      color: AppColors.bg,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.bg, // red as border color
                          ),
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                2.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Summary',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                2.h.heightBox,
                Row(
                  children: [
                    Container(
                      height: 3.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.bg),
                      ),
                      child: Image.asset(
                        'lib/assets/images/paypal.png',
                        color: AppColors.textgrey,
                      ),
                    ).px4(),
                    Container(
                      height: 3.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.bg),
                      ),
                      child: Image.asset(
                        'lib/assets/images/credit_card.png',
                        color: AppColors.white,
                      ),
                    ).px4(),
                    Container(
                      height: 3.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.bg),
                      ),
                      child: Image.asset(
                        'lib/assets/images/wallet.png',
                        color: AppColors.textgrey,
                      ),
                    ).px4(),
                    const Spacer(),
                    Container(
                      height: 3.h,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Text(
                        'Manage Payment Method',
                        style:
                            TextStyle(fontSize: 12, color: AppColors.primary),
                      ).centered(),
                    ).onTap(() {
                      // Get.to(PaymentOptionScreen());
                      Get.to(() => PaymentOptionScreen());
                    }),
                  ],
                ).pSymmetric(h: 3.w),
                5.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Name on Card',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  //validator: _checkoutPaymentController.validatecard,
                  controller: _checkoutPaymentController.card,
                  decoration: const InputDecoration(
                    hintText: 'Visa',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.bg),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textgrey,
                      ),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Card Number',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  //validator: _checkoutPaymentController.validatecardnumber,
                  controller: _checkoutPaymentController.cardnumber,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'lib/assets/images/Icon_MasterCard.png',
                        height: 5,
                        width: 0.5.w,
                      ),
                    ),
                    hintText: '4560  5644  3224  4543',
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.bg),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textgrey,
                      ),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Expiry Date',
                          style: TextStyle(fontSize: 10),
                        )),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'CVV',
                          style: TextStyle(fontSize: 10),
                        )).pSymmetric(h: 36.w),
                  ],
                ).pSymmetric(h: 4.w),
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        //validator:
                        //_checkoutPaymentController.validateexpirydate,
                        controller: _checkoutPaymentController.expirydate,
                        decoration: const InputDecoration(
                          hintText: '09/20',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.bg),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.textgrey,
                            ),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        //validator: _checkoutPaymentController.validatecvv,
                        controller: _checkoutPaymentController.cvv,
                        decoration: const InputDecoration(
                          hintText: '467',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.bg),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.textgrey,
                            ),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                  ],
                ),
                2.h.heightBox,
                Obx(
                  () => CircleCheckboxListTile(
                    activeColor: AppColors.primary,
                    title: const Text(
                      'Save this card details',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _checkbox1.value2.value,
                    onChanged: _checkbox1.value2,
                    //secondary: const Icon(Icons.hourglass_empty),
                  ),
                ),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Container(
                        height: 6.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: 'NEXT'
                            .text
                            .size(10.sp)
                            .letterSpacing(1.5)
                            .bold
                            .white
                            .make()
                            .centered(),
                      ).onTap(() {
                        // _checkoutPaymentController.Checkcvv();
                        Get.to(() => CheckoutSummaryScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                      }),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
