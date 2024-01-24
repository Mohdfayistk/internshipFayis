import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/manageaccount.dart';
import 'package:intership/orderaccount.dart';
import 'package:intership/savedaddress.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 33.w),
            child: Text(
              'My Account',
              style: TextStyle(
                color: Color(0xFF463507),
                fontSize: 15.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 33.w),
            child: Row(
              children: [
                Container(
                  width: 84.w,
                  height: 84.h,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 3.w, color: Color(0xFFF3F3F3)),
                    ),
                  ),
                  child: SizedBox(
                      width: 72.w,
                      height: 72.h,
                      child: Image.asset("assets/account.png")),
                ),
                SizedBox(
                  width: 58.w,
                ),
                Text(
                  ' Shafeek',
                  style: TextStyle(
                    color: Color(0xFF463507),
                    fontSize: 24.sp,
                    fontFamily: 'hello',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 33.w,
              ),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>OrderAccount()));
              },
                child: Container(
                  width: 170.w,
                  height: 55.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 18.w,
                      ),
                      SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: Image.asset("assets/19.png")),
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(
                          color: Color(0xFF463507),
                          fontSize: 16.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              InkWell(onTap: (){},
                child: Container(
                  width: 170.w,
                  height: 55.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: Image.asset("assets/20.png")),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        'Favourite',
                        style: TextStyle(
                          color: Color(0xFF463507),
                          fontSize: 16.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 33.w,
              ),
              InkWell(onTap: (){},
                child: Container(
                  width: 170.w,
                  height: 55.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 18.w,
                      ),
                      SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: Image.asset("assets/21.png")),
                      SizedBox(
                        width: 32.w,
                      ),
                      Text(
                        'Cart',
                        style: TextStyle(
                          color: Color(0xFF463507),
                          fontSize: 16.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 33.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SavedAddress()));
              },
                child: Container(
                  width: 170.w,
                  height: 55.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 13.w,
                      ),
                      Text(
                        'Saved Address ',
                        style: TextStyle(
                          color: Color(0xFF463507),
                          fontSize: 16.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ManageAccount()));
            },
              child: Container(
                width: 357.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 22.w,
                    ),
                    SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: Image.asset("assets/22.png")),
                    SizedBox(
                      width: 34.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Manage Accounts',
                          style: TextStyle(
                            color: Color(0xFF463507),
                            fontSize: 20.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Your account details',
                          style: TextStyle(
                            color: Color(0xFFC9C9C9),
                            fontSize: 14.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 72.w,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 22.sp,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          Container(
            width: 430.w,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.20.w,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF9E9999),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              SizedBox(
                  width: 25.w,
                  height: 25.h,
                  child: Image.asset("assets/23.png")),
              SizedBox(
                width: 20.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Invite Friends , Get rewards',
                    style: TextStyle(
                      color: Color(0xFF104363),
                      fontSize: 17.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Share your code ',
                        style: TextStyle(
                          color: Color(0xFF104363),
                          fontSize: 15.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'z0EB6Mx',
                        style: TextStyle(
                          color: Color(0xFF104363),
                          fontSize: 15.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: Image.asset("assets/24.png")),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 35.w,
              ),
              Container(
                width: 74.w,
                height: 25.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.25.w, color: Color(0xFF1C5B82)),
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Share',
                    style: TextStyle(
                      color: Color(0xFF104363),
                      fontSize: 15.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 47.w),
            child: Text(
              'FAQs',
              style: TextStyle(
                color: Color(0xFF463507),
                fontSize: 15.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 47.w),
            child: Text(
              'ABOUT US',
              style: TextStyle(
                color: Color(0xFF463507),
                fontSize: 15.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 47.w),
            child: Text(
              'TERMS OF USE',
              style: TextStyle(
                color: Color(0xFF463507),
                fontSize: 15.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 47.w),
            child: Text(
              'PRIVACY POLICY',
              style: TextStyle(
                color: Color(0xFF463507),
                fontSize: 15.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 45.h,
          ),
          Center(
            child: Container(
              width: 357.w,
              height: 54.h,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.w, color: Color(0xFFFFC113)),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              child: Center(
                child: Text(
                  'LOG OUT',
                  style: TextStyle(
                    color: Color(0xFFFFC113),
                    fontSize: 16.sp,
                    fontFamily: 'hello',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
