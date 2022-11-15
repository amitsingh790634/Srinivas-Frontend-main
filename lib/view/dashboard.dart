import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:srinivas_frontend/view/category_view.dart';
import 'package:srinivas_frontend/view/notification_view.dart';
import 'package:srinivas_frontend/view/product_details_view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../core/app_colors.dart';

final List imgList = [
  'lib/assets/images/dashboard/slider_1.png',
  'lib/assets/images/dashboard/slider_2.png',
  'lib/assets/images/dashboard/slider_3.png',
  'lib/assets/images/dashboard/slider_4.png'
];

final List catList = [
  [
    'lib/assets/images/dashboard/product/1.png',
    'lib/assets/images/dashboard/product/2.png',
    'lib/assets/images/dashboard/product/3.png',
    'lib/assets/images/dashboard/product/4.png',
    'lib/assets/images/dashboard/product/5.png',
    'lib/assets/images/dashboard/product/6.png',
    'lib/assets/images/dashboard/product/7.png',
    'lib/assets/images/dashboard/product/8.png',
  ],
  [
    'Health care products',
    'Diabetic care items',
    'Physio and ortho',
    'Hospital furniture',
    'Disposable',
    'Rehabilitaion aids',
    'Instruments',
    'Fitness and aerobics'
  ]
];
final List prodList = [
  'lib/assets/images/dashboard/oxygen_meter.png',
  'lib/assets/images/dashboard/mask.png',
  'lib/assets/images/dashboard/oxygen_meter.png',
  'lib/assets/images/dashboard/mask.png',
];

final List bottomImg = [
  'lib/assets/images/dashboard/bottom_slider1.png',
  'lib/assets/images/dashboard/bottom_slider2.png',
];

final List storeList = [
  [
    'Kukatpally',
    'Shop no. 6, MIG-256,258, S.R Towers road no 4 KPHB colony',
    '040-23052523',
    '8466967967'
  ],
  [
    'Chandanagar',
    '5-140, Manjeera Road Mythri Hospital Back Side, Hyderabad',
    '040-43632089',
    '9440572089'
  ],
  [
    'Chandanagar',
    'H.no: 4-129 Main road, Chandanagar Bus stop, Hyderabad',
    '040-23032089',
    '9515164637'
  ],
  [
    'Secunderabad',
    'Plot No: 10, Opposite Pullareddy Sweets, Karkhana,Hyderabad,',
    '040-23032089',
    '9100671637/9515164637'
  ],
  [
    'Sangareddy',
    'H.No:4-8-94/2, Opp ITI College, Beside Manik Hospital, Hyderabad',
    '040-29561089',
    '8897493089/9515164637'
  ],
  [
    'Gachibowli',
    '2-48/P/21, Shop no:1, Main Road, Near Police Commissioner Office, Telecom Nagar, Hyderabad',
    '040-29561089',
    '9100729637'
  ],
  [
    'Kukatpally',
    'Shop no. 6, MIG-256, 258, S.R Towers road no 4 KPHB colony',
    '040-23052523',
    '8466967967'
  ],
  [
    'Kukatpally',
    'Shop no. 6, MIG-256, 258, S.R Towers road no 4 KPHB colony',
    '040-23052523',
    '8466967967'
  ],
];

class DashboardScreen extends GetView {
  DashboardScreen({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();
  final int _current = 0;

  final List<Widget> imageSliders = imgList
      .map(
        (item) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      )
      .toList();

  final List<Widget> bottomSliders = bottomImg
      .map(
        (item) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0,
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () => Get.to(const NotificationScreen()),
            child: Image.asset('lib/assets/images/bell.png')
                .paddingOnly(top: 10, right: 10),
          ),
        ],
        title: const Text(
          'Home',
          style: TextStyle(
              color: AppColors.textblack,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            2.h.heightBox,
            SizedBox(
              height: 45,
              width: 90.w,
              child: TextField(
                // keyboardType: TextInputType.number,
                // maxLength: 13,

                // inputFormatters: [Max],
                cursorHeight: 22,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.bg,
                  prefixIcon: Image.asset('lib/assets/images/search.png'),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  // counterText: "",
                  hintText: 'Search products',
                  hintStyle:
                      const TextStyle(fontSize: 14, color: AppColors.textgrey),
                  contentPadding: const EdgeInsets.only(left: 15),
                ),
              ),
            ).centered(),
            8.h.heightBox,
            // CarouselSlider(
            //   options: CarouselOptions(
            //     aspectRatio: 2.0,
            //     enlargeCenterPage: true,
            //     scrollDirection: Axis.horizontal,
            //     autoPlay: true,
            //   ),
            //   items: imageSliders,
            // ),
            Column(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 1.8,
                    // onPageChanged: () {
                    //   setState(() {
                    //     _current = index;
                    //   });
                    // }
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 6.0,
                        height: 6.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : AppColors.primary)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            2.5.h.heightBox,
            const Text(
              'Our Categories',
              style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ).objectTopLeft().paddingOnly(left: 15),

            2.h.heightBox,

            Container(
              color: AppColors.white,
              height: 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => ViewCategoryScreen(
                              title: catList[1][index],
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  catList[0][index],
                                ),
                                fit: BoxFit.fill),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border:
                                Border.all(color: AppColors.black, width: 1),
                          ),
                          // child: Image.asset(
                          //   catList[0][index],
                          //   fit: BoxFit.fill,
                          // )
                        ).w(90).h(90),
                      ),
                      1.h.heightBox,
                      Flexible(
                          child: Text(
                        catList[1][index],
                        style: const TextStyle(fontSize: 12),
                        // maxLines: 2,
                      ))
                    ],
                    // width: 90,

                    // color: AppColors.primary,
                  ).marginAll(5).w(90);
                },
                itemCount: 8,
                scrollDirection: Axis.horizontal,
              ),
            ),
            2.h.heightBox,
            Container(
              width: 95.w,
              // height: 16.h,
              decoration: const BoxDecoration(
                color: AppColors.bggrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Get delivered at your doorstep',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ).objectTopLeft(),
                  1.h.heightBox,
                  const Text(
                    'Your order get deliver within 4 hrs in respective',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textgrey),
                  ).objectTopLeft(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'branches within ',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textgrey),
                      ),
                      Text(
                        '5 Kms',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textgrey),
                      ),
                    ],
                  ).objectTopLeft(),
                ],
              ).paddingAll(15).objectTopLeft(),
            ),
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOP PICKS',
                  style: TextStyle(
                    color: AppColors.primary.withOpacity(0.9),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.black)),
                  child: Text(
                    'VIEW ALL',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textblack.withOpacity(0.9),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 15),
            0.5.h.heightBox,
            Container(
                color: AppColors.white,
                width: 100.w,
                height: 35.h,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (() => Get.to(ProductDetailScreen())),
                      child: Stack(
                        // alignment: AlignmentDirectional.centerStart,
                        //  clipBehavior: ,
                        fit: StackFit.loose,
                        clipBehavior: Clip.none,

                        children: [
                          Container(
                            // height: 258,
                            width: 176,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                    prodList[index],
                                  ),
                                  alignment: Alignment.topCenter,
                                  fit: BoxFit.fill,
                                  scale: 1),
                            ),

                            // child: Image.asset(
                            //     'lib/assets/images/dashboard/slider_1.png'),
                          ),
                          Positioned(
                            bottom: 10,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: 176,
                              // height: 94,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Loreum lipsum amet',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ).paddingOnly(left: 12, right: 57, top: 15),
                                  1.h.heightBox,
                                  Row(
                                    children: const [
                                      Text('565.0 ₹'),
                                      Spacer(),
                                      ImageIcon(
                                        AssetImage(
                                            'lib/assets/images/cart.png'),
                                        size: 18,
                                      ),
                                    ],
                                  ).paddingSymmetric(
                                      horizontal: 12, vertical: 0)
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              height: 4.h,
                              width: 16.w,
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
                              right: 10,
                              top: 10,
                              child: Icon(Icons.favorite_border_outlined)),
                        ],
                      ).marginSymmetric(horizontal: 5),
                    );
                  },
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                )),
            1.5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FRESH ARRIVALS',
                  style: TextStyle(
                      color: AppColors.primary.withOpacity(0.9),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.black)),
                  child: Text(
                    'VIEW ALL',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textblack.withOpacity(0.9),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 15),
            0.5.h.heightBox,
            Container(
                color: AppColors.white,
                width: 100.w,
                height: 35.h,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (() => Get.to(ProductDetailScreen())),
                      child: Stack(
                        // clipBehavior: ,
                        fit: StackFit.loose,
                        clipBehavior: Clip.none,

                        children: [
                          Container(
                            height: 258,
                            width: 176,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                    prodList[index],
                                  ),
                                  alignment: Alignment.topCenter,
                                  fit: BoxFit.fill,
                                  scale: 1),
                            ),

                            // child: Image.asset(
                            //     'lib/assets/images/dashboard/slider_1.png'),
                          ),
                          Positioned(
                            bottom: 10,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: 176,
                              // height: 94,
                              child: Column(
                                children: [
                                  const Text(
                                    'Loreum lipsum amet',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    maxLines: 3,
                                  ).paddingOnly(left: 12, right: 57, top: 15),
                                  1.h.heightBox,
                                  Row(
                                    children: const [
                                      Text('565.0 ₹'),
                                      Spacer(),
                                      ImageIcon(
                                        AssetImage(
                                            'lib/assets/images/cart.png'),
                                        size: 18,
                                      ),
                                    ],
                                  ).paddingSymmetric(
                                      horizontal: 12, vertical: 0)
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              height: 4.h,
                              width: 16.w,
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
                              right: 10,
                              top: 10,
                              child: Icon(Icons.favorite_border_outlined)),
                        ],
                      ).marginSymmetric(horizontal: 5),
                    );
                  },
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                )),
            3.h.heightBox,
            Column(
              children: [
                CarouselSlider(
                  items: bottomSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: false,
                    aspectRatio: 1.9,
                    viewportFraction: 1,
                    // onPageChanged: () {
                    //   setState(() {
                    //     _current = index;
                    //   });
                    // }
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: imgList.asMap().entries.map((entry) {
                //     return GestureDetector(
                //         onTap: () => _controller.animateToPage(entry.key),
                //         child: Container(
                //           width: 6.0,
                //           height: 6.0,
                //           margin: const EdgeInsets.symmetric(
                //               vertical: 0.0, horizontal: 2),
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               color: (Theme.of(context).brightness ==
                //                           Brightness.dark
                //                       ? Colors.white
                //                       : AppColors.primary)
                //                   .withOpacity(
                //                       _current == entry.key ? 0.9 : 0.4)),
                //         ));
                //   }).toList(),
                // ),
                5.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/assets/images/location-pin-black.png',
                    ),
                    2.w.widthBox,
                    const Text(
                      'You can also reach us here !',
                      style:
                          TextStyle(fontSize: 14, color: AppColors.textblack),
                    )
                  ],
                ),
                3.h.heightBox,
                Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        // width: 45.w,
                        // height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border:
                              Border.all(color: AppColors.textgrey, width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/assets/images/location-pin-red.png',
                                  scale: 1.1.sp,
                                ),
                                1.w.widthBox,
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    storeList[index][0],
                                    style: const TextStyle(
                                        color: AppColors.red, fontSize: 14),
                                  ),
                                ),
                              ],
                            ).paddingOnly(top: 15, left: 10),
                            // 1.h.heightBox,
                            Container(
                                width: 45.w,
                                child: Text(
                                  storeList[index][1],
                                  style: const TextStyle(
                                      fontSize: 13, color: AppColors.textblack),
                                  textAlign: TextAlign.left,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  // textWidthBasis: TextWidthBasis.values[3],
                                  // maxLines: 4,
                                )),
                            // const Spacer(),
                            Container(
                                width: 45.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.call_outlined,
                                      size: 16,
                                      color: AppColors.textblack,
                                    ),
                                    1.5.w.widthBox,
                                    Text(
                                      storeList[index][2],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textblack),
                                    )
                                  ],
                                )),
                            // 1.h.heightBox,
                            Container(
                                width: 50.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.phone_android,
                                      size: 16,
                                      color: AppColors.textblack,
                                    ),
                                    // 1.w.widthBox,
                                    Text(
                                      storeList[index][3],
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: AppColors.textblack,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                          ],
                        ).paddingOnly(bottom: 15),
                      ).paddingSymmetric(horizontal: 6);
                    },
                  ),
                ),
                5.h.heightBox,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
