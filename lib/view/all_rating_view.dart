import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/core/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AllratingView extends GetView {
  const AllratingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          height: 40,
          width: 40,
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
        ),
        title: Row(
          children: [
            Text(
              'Andre Young',
              style: TextStyle(
                  color: AppColors.textblack,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            Spacer(),
            VxRating(
              onRatingUpdate: (_) {
                // value = allrating.reviews[index].rating
                //     .toString();
              },
              // value:
              //     allrating.reviews[index].rating.toDouble(),
              // count: allrating.reviews[index].rating,
              count: 4,
              selectionColor: Colors.yellow,
              isSelectable: true,
              // maxRating: 5,
              // normalColor: Colors.grey,

              // normalColor: Colors.grey,
              size: 20,
              // value:
              //     allrating.reviews[index].rating.toDouble(),
            ),
          ],
        ),
        subtitle: Flex(
          direction: Axis.vertical,
          children: [
            Text(
              'Lorem ipsum dolor sit amet. Aut provident recusandae id',
              style: TextStyle(fontSize: 12, color: AppColors.textgrey),
            )
          ],
        ).objectCenterLeft(),
        isThreeLine: true,
      ).w(100.w).h(10.h),
      itemCount: 8,
    );
  }
}
