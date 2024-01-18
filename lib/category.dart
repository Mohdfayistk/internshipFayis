import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            children: [
              SizedBox(width: 30.w,),
              Icon(Icons.arrow_back,),
              SizedBox(width: 15.w,),
              Text(
                'Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'Gadugi',
                  fontWeight: FontWeight.w400,

                ),
              ),
              SizedBox(width: 105.w,),
              Icon(Icons.search,color: Color(0xff828282),),
              SizedBox(width: 20.w,),
              Icon(Icons.favorite_border_outlined,color: Color(0xff636363),),
              SizedBox(width: 20.w,),
              Icon(Icons.shopping_cart_outlined,color: Color(0xff636363),),
            ],
          ),
          SizedBox(height: 60.h,),
          Center(
            child: Container(
              width: 364.w,
              height: 104.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 19.r,
                    offset: Offset(0, 0),
                    spreadRadius: -3,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 71.w,
                    height: 71.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFC113),
                      shape: OvalBorder(),
                    ),
                    child: SizedBox(width: 20.w,
                        height: 20.h
                        ,child: Image.asset("assets/31.png")),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
