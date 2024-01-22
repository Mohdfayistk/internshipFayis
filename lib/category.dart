import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}
bool category = false;
class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f3f3),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 70.h,
      ),
      Row(
        children: [
          SizedBox(
            width: 30.w,
          ),
          // Icon(Icons.arrow_back,),
          SizedBox(
            width: 15.w,
          ),
          Text(
            'Categories',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'hello',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 105.w,
          ),
          Icon(
            Icons.search,
            color: Color(0xff828282),
          ),
          SizedBox(
            width: 20.w,
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: Color(0xff636363),
          ),
          SizedBox(
            width: 20.w,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xff636363),
          ),
        ],
      ),
      SizedBox(
        height: 60.h,
      ),
      SizedBox(
          height: 750.h,
          child: ListView.separated(
              separatorBuilder: (ctx, index) {
                return Container(
                  width: 100.w,
                  height: 25.h,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w),
                  ),
                );
              },
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return
             Center(
               child: Column(
                 children: [
                   GestureDetector(onTap: (){
                     setState(() {
                       category = !category;
                     });
                   },
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
                            child: Row(children: [
                              SizedBox(
                                width: 37.w,
                              ),
                              SizedBox(
                                  width: 71.w,
                                  height: 71.h,
                                  child: Image.asset("assets/32.png")),
                              SizedBox(
                                width: 25.w,
                              ),
                              Text(
                                'Mobile \nAccessories',
                                style: TextStyle(
                                  color: Color(0xFFA4A2A2),
                                  fontSize: 20.sp,
                                  fontFamily: 'hello',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 45.w,
                              ),
                              Icon(
                                Icons.expand_more,
                                color: Color(0xff9E9999),
                                size: 34.sp,
                              )
                            ]),
                     ),
                   ),
                   SizedBox(height: 20.h,),

                   Visibility(
                     visible: category,
                     child:Container(
                       width: 364.w,
                       height: 204.h,
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
                     )
                   )
                 ],
               ),
             );
              }))
    ])));
  }
}
