import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

TextEditingController search = TextEditingController();
int currentIndex = 0;

class _HomepageState extends State<Homepage> {
  var controller;

  @override
  void initState() {
    controller = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 75.h,
          ),
          Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: SizedBox(
                  width: 158.w,
                  height: 40.h,
                  child: Image.asset("assets/9.png"))),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Container(
              width: 397.w,
              height: 49.h,
              decoration: ShapeDecoration(
                color: Color(0xFFF3F3F3),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Icon(
                    Icons.search_rounded,
                    color: Color(0xff828282),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 200.w,
                    child: TextFormField(
                      style: TextStyle(color: Color(0xff767676)),
                      controller: search,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Icon(
                    Icons.mic_none_outlined,
                    color: Color(0xff828282),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Icon(
                    Icons.photo_camera_outlined,
                    color: Color(0xff828282),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          CarouselSlider.builder(
            //Slider Container properties
            options: CarouselOptions(
              onPageChanged: (index, a) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 200.h,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 300),
              viewportFraction: 1.0,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/12.png"),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 160.w, bottom: 100.h),
            child: Stack(
              children: [
                Container(
                    child: AnimatedSmoothIndicator(
                  activeIndex: currentIndex,
                  count: 5,
                  effect: WormEffect(),
                )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Text(
              'Choose Brand',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontFamily: 'Gadugi',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: -0.30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
