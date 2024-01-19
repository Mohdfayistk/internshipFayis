import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/Tv.dart';
import 'package:intership/trending%20Now.dart';
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Stack(
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
                        count: 5,
                        effect: WormEffect(dotHeight: 7.h, dotWidth: 7.w),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Text(
              'Choose Brand',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: -0.30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: SizedBox(
              height: 105.h,
              width: 500.w,
              child: ListView.separated(
                separatorBuilder: (ctx, index) {
                  return SizedBox(
                    width: 16.w,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, position) {
                  return SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.w),
                      child: SizedBox(
                        width: 87.w,
                        height: 87.h,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Image.asset("assets/Mi.png")),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                'Trending Now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.30,
                ),
              ),
              SizedBox(
                width: 195.w,
              ),
              TextButton(onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> TrendingNow()));
              } ,
                child: Text(
                  'See all',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF264050),
                    fontSize: 18,
                    fontFamily: 'hello',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 17.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: SizedBox(
              width: 500.w,
              height: 190.h,
              child: ListView.separated(
                separatorBuilder: (ctx, index) {
                  return SizedBox(
                    width: 14.w,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, position) {
                  return SizedBox(
                    child: Padding(
                        padding: EdgeInsets.only(top: 15.w),
                        child: GestureDetector(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Tv()));
                        },
                          child: Container(
                            width: 149.w,
                            height: 190.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFEFEEEE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Image.asset("assets/TV.png"),
                                Container(
                                  width: 141.w,
                                  height: 53.h,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFF3F3F3)),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            'Samsung Tv',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.sp,
                                              fontFamily: 'hello',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                              letterSpacing: -0.30,
                                            ),
                                          ),
                                          Text(
                                            '32” Full HD',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF999595),
                                              fontSize: 10.sp,
                                              fontFamily: 'hello',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                              letterSpacing: -0.30,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '45000',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF999595),
                                                  fontSize: 10,
                                                  fontFamily: 'hello',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                  letterSpacing: -0.30,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Text(
                                                '40000',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF999595),
                                                  fontSize: 10,
                                                  fontFamily: 'hello',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                  letterSpacing: -0.30,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                'Best Offer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.30,
                ),
              ),
              SizedBox(
                width: 240.w,
              ),
              Text(
                'See all',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF264050),
                  fontSize: 20,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: SizedBox(
              width: 500.w,
              height: 210.h,
              child: ListView.separated(
                  separatorBuilder: (ctx, index) {
                    return SizedBox(
                      width: 14.w,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, position) {
                    return SizedBox(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(14.r),
                                    topLeft: Radius.circular(14.r),
                                  ),
                                  child: Image.asset(
                                    "assets/TV1.png",
                                    width: 145.w,
                                    height: 130.h,
                                  ),
                                ),
                                Container(
                                  width: 146.w,
                                  height: 3.h,
                                  decoration:
                                      BoxDecoration(color: Color(0xFFFFC113)),
                                ),
                                Container(
                                  width: 146.w,
                                  height: 55.h,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE2E2E2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          'Big Deals',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFF6700),
                                            fontSize: 12.sp,
                                            fontFamily: 'hello',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'Starrting @ 20000/-',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF293744),
                                            fontSize: 12,
                                            fontFamily: 'hello',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                            letterSpacing: -0.30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: .5.w),
                              child: Image.asset("assets/13.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 24.h),
                              child: Text(
                                '10% Off',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'hello',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 115.h, left: 9.w),
                              child: Container(
                                width: 128.w,
                                height: 26.h,
                                decoration: ShapeDecoration(
                                  color:
                                      Colors.black.withOpacity(0.800000011920929),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Television',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontFamily: 'hello',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 0.50,
                                              strokeAlign:
                                                  BorderSide.strokeAlignCenter,
                                              color: Color(0xFFFFC113),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 18.w,
                                    ),
                                    SizedBox(
                                        width: 16.w,
                                        height: 16.h,
                                        child: Image.asset("assets/14.png")),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
                  }),
            ),
          ),
          SizedBox(
            height: 30.h,
          )
        ]),
      ),
    );
  }
}
