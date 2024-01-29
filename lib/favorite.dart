import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 10.h,
              ),
              Text(
                'Favourites',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(
            height: 740.h,
            child: ListView.separated(
                separatorBuilder: (ctx, index) {
                  return Container(
                    width: 100.w,
                    height: 100.h,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.w),
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
                          child: GestureDetector(
                              onTap: () {},
                              child: Image.asset("assets/TV2.png"))),
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
                                  fontFamily: 'hello',
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
                              fontFamily: 'hello',
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
