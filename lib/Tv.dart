import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tv extends StatefulWidget {
  const Tv({Key? key}) : super(key: key);

  @override
  State<Tv> createState() => _TvState();
}

int count = 1;
int currentIndex = 0;

class _TvState extends State<Tv> {
  var controller;

  @override
  void initState() {
    controller = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 80.h,
        ),
        Center(
          child: SizedBox(
            width: 275.w,
            height: 333.h,
            child: Stack(
              children: [
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
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index, int realIndex) {
                    return Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/TV3.png"),
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 180.h),
                  child: Center(
                    child: Container(
                        decoration: ShapeDecoration(
                            color: Color(0x7FF1F1F1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                        child: AnimatedSmoothIndicator(
                          activeIndex: currentIndex,
                          count: 3,
                          effect: WormEffect(dotHeight: 7.h, dotWidth: 7.w),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),

        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Text(
                'Television 32’’ Smart TV',
                style: TextStyle(
                  color: Color(0xFF1D1D1B),
                  fontSize: 25.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.03,
                  letterSpacing: 0.10,
                ),
              ),
            ),
            SizedBox(
              width: 35.w,
            ),
            Text(
              '₹ 50,000',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 16.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w400,
                height: 0.07,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: SizedBox(
              width: 87.w,
              height: 13.h,
              child: Image.asset("assets/star1.png")),
        ),
        SizedBox(
          height: 17.h,
        ),
        Center(
          child: Container(
            width: 344.w,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.w,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFF0F0F0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 23.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 74.w),
          child: Row(
            children: [
              Text(
                '1 - 10 sets',
                style: TextStyle(
                  color: Color(0xFF1D1D1B),
                  fontSize: 12.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(
                width: 50.w,
              ),
              Text(
                '10 - 50 sets',
                style: TextStyle(
                  color: Color(0xFF1D1D1B),
                  fontSize: 12.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(
                width: 50.w,
              ),
              Text(
                '50 - 100 sets',
                style: TextStyle(
                  color: Color(0xFF1D1D1B),
                  fontSize: 12.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                  letterSpacing: 0.10,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 72.w),
          child: Row(
            children: [
              Text(
                '₹ 50,000',
                style: TextStyle(
                  color: Color(0xFF1D1D1B),
                  fontSize: 16.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w500,
                  height: 0.07,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(
                width: 47.w,
              ),
              Text(
                '₹ 49,000',
                style: TextStyle(
                  color: Color(0xFF1D1D1B),
                  fontSize: 16.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w500,
                  height: 0.07,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(
                width: 49.w,
              ),
              Text(
                '₹ 47,000',
                style: TextStyle(
                  color: Color(0xFF1D1D1B),
                  fontSize: 16.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w500,
                  height: 0.07,
                  letterSpacing: 0.10,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Center(
          child: Container(
            width: 344.w,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.w,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFF0F0F0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 27.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 150.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (count > 1) {
                    setState(() {
                      count = count - 1;
                    });
                  }
                },
                child: Container(
                  width: 39.05.w,
                  height: 36.26.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  child: Center(
                      child: Container(
                    width: 15.w,
                    height: 2.h,
                    decoration: ShapeDecoration(
                      color: Color(0xff929292),
                      shape: RoundedRectangleBorder(),
                    ),
                  )),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                width: 65.54.w,
                height: 36.26.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      color: Color(0xFF919191),
                      fontSize: 18.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count = count + 1;
                  });
                },
                child: Container(
                  width: 39.05.w,
                  height: 36.26.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Color(0xFF919191),
                        fontSize: 18.sp,
                        fontFamily: 'hello',
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 21.h),
        Center(
          child: Container(
            width: 343.w,
            height: 63.h,
            decoration: ShapeDecoration(
              color: Color(0xFF264050),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19.r),
              ),
            ),
            child: Center(
              child: Text(
                'ADD TO CART',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w500,
                  height: 0.06,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: Container(
            width: 343.w,
            height: 63.h,
            decoration: ShapeDecoration(
              color: Color(0xFFFFC113),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19.r),
              ),
            ),
            child: Center(
              child: Text(
                'BUY NOW',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w500,
                  height: 0.06,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 43.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Product Detail',
            style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 20.sp,
              fontFamily: 'hello',
              fontWeight: FontWeight.w700,
              height: 0.04.h,
            ),
          ),
        ),
        SizedBox(
          height: 21.h,
        ),
        Center(
          child: SizedBox(
            width: 364.w,
            height: 220.h,
            child: Text(
              'With this Samsung TV, every image on the screen comes to life, giving you a home theatre experience. With the HD visual quality of this TV, you can enjoy vibrant movie scenes. Additionally, HDR increases the screens brightness and brings out the subtleties of the material. Moreover, the Contrast Enhancer on this TV improves contrast and offers superb image quality with increased depth.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w400,
                height: 1.5.h,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Rating & Reviews',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontFamily: 'hello',
              fontWeight: FontWeight.w400,
              height: 0.07,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Row(
            children: [
              SizedBox(
                  width: 87.w,
                  height: 13.h,
                  child: Image.asset("assets/star1.png")),
              SizedBox(
                width: 30.w,
              ),
              Text(
                'Terrific',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Value for Money',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.sp,
              fontFamily: 'hello',
              fontWeight: FontWeight.w400,
              height: 0.11,
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Shafeek',
            style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 14.sp,
              fontFamily: 'hello',
              fontWeight: FontWeight.w400,
              height: 0.09,
            ),
          ),
        ),
        SizedBox(
          height: 35.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Row(
            children: [
              SizedBox(
                  width: 87.w,
                  height: 13.h,
                  child: Image.asset("assets/star1.png")),
              SizedBox(
                width: 30.w,
              ),
              Text(
                'Terrific',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Good Product',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.sp,
              fontFamily: 'hello',
              fontWeight: FontWeight.w400,
              height: 0.11,
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Arun',
            style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 14.sp,
              fontFamily: 'hello',
              fontWeight: FontWeight.w400,
              height: 0.09,
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
      ],
    )));
  }
}
