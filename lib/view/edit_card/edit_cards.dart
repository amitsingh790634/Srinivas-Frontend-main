import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:srinivas_frontend/view/Check_Out/checkout_summary.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../Check_Out/checkbox_controller.dart';
import 'edit_card_controller.dart';

class EditCard extends StatelessWidget {
  EditCard({Key? key}) : super(key: key);

  final EditCardController _editCardController = Get.put(EditCardController());
  final Checkbox1 _checkbox1 = Get.put(Checkbox1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Edit Cards',
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
        child: SafeArea(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _editCardController.CheckCardform,
            child: Column(
              children: [
                //     Stack(
                //       children: [
                //         Positioned(
                //           top: 2,
                //           child: Container(
                //             height: 352,
                //             width: 352,
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               shape: BoxShape.circle,
                //             ),
                //           ),
                //
                //         )
                //       ],
                //     ),
                //
                //
                //     Container(
                //     height: 170,
                //   width: 343,
                //
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     gradient: LinearGradient(
                //       colors: [Color(0xFF780C1C),Color(0xFFF01738)],
                //   begin: Alignment.bottomCenter,
                //   end: Alignment.topCenter,),
                //   ),
                // ),

                Image.asset(
                  'lib/assets/images/dashboard/edit_cc.png',
                  width: 343,
                  height: 170,
                ),

                5.h.heightBox,

                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Name on Card',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),

                TextFormField(
                  // validator: _editCardController.validatecard,
                  controller: _editCardController.card,
                  decoration: const InputDecoration(
                    hintText: 'Visa',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.bg,
                      ),
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
                  // validator: _editCardController.validatecardnumber,
                  controller: _editCardController.cardnumber,
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
                      borderSide: BorderSide(
                        color: AppColors.bg,
                      ),
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
                        // validator: _editCardController.validateexpirydate,
                        controller: _editCardController.expirydate,
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
                        // validator: _editCardController.validatecvv,
                        controller: _editCardController.cvv,
                        decoration: const InputDecoration(
                          hintText: '467',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.bg,
                            ),
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
                        color: AppColors.textblack,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _checkbox1.value5.value,
                    onChanged: _checkbox1.value5,
                    //secondary: const Icon(Icons.hourglass_empty),
                  ),
                ),

                3.h.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Container(
                        height: 52,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.primary),
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: 'CANCEL'
                            .text
                            .size(10.sp)
                            .letterSpacing(1.5)
                            .bold
                            .color(AppColors.primary)
                            .make()
                            .centered(),
                      ).onTap(() {
                        Get.back();

                        //_signupController.CheckSignup();
                        //Get.to(()=> CheckoutScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                      }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Container(
                        height: 52,
                        width: 170,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: 'SAVE'
                            .text
                            .size(10.sp)
                            .letterSpacing(1.5)
                            .bold
                            .white
                            .make()
                            .centered(),
                      ).onTap(() {
                        // _editCardController.Checkcvv();
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
