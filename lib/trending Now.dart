import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/order.dart';

class TrendingNow extends StatefulWidget {
  const TrendingNow({Key? key}) : super(key: key);

  @override
  State<TrendingNow> createState() => _TrendingNowState();
}

class _TrendingNowState extends State<TrendingNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 124.h,
        leadingWidth: 40.w,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back)),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: Text(
            'Trending Now',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'hello',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: Icon(Icons.favorite_border_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 740.h,
            child: ListView.separated(
                separatorBuilder: (ctx, index) {
                  return Container(
                    width: 100.w,
                    height: 100.h,
                    child: Padding(
                      padding:  EdgeInsets.only(right: 20.w),
                      child: Divider(
                        color: Color(0xffF8F8F8),
                      ),
                    ),
                  );
                },
                itemCount: 10,
                itemBuilder: (context, position) {
                  return SizedBox(
                      child: Row(
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      SizedBox(
                          width: 103.w,
                          height: 87.h,
                          child: GestureDetector(onTap:(){
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) => Order()));
                          },child: Image.asset("assets/TV2.png"))),
                      SizedBox(
                        width: 50.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Television 32’’ Smart TV',
                                style: TextStyle(
                                  color: Color(0xFF1D1D1B),
                                  fontSize: 14.sp,
                                  fontFamily: 'Brandon Grotesque',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                  letterSpacing: 0.10,
                                ),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Icon(Icons.favorite_border_outlined),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Image.asset("assets/star.png"),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            '₹ 50,000',
                            style: TextStyle(
                              color: Color(0xFF7C7C7C),
                              fontSize: 14.sp,
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ));
                }),
          ),
        ],
      ),
    );
  }
}
