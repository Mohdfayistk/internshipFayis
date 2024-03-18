import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/homepage.dart';
import 'package:intership/UI/loginpage.dart';
import 'package:intership/UI/signup.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 81.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.w),
            child: Text(
              'Hello!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF264050),
                fontSize: 36.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w700,
                height: 0,
                letterSpacing: -0.30,
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Center(
            child: Stack(children: [
              SizedBox(
                  width: 314.w,
                  height: 313.h,
                  child: Image.asset("assets/3.png")),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: SizedBox(
                    width: 331.w,
                    height: 291.h,
                    child: Image.asset("assets/2.png")),
              )
            ]),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Text(
              'Let’s Start your \nnext level shopping.',
              style: TextStyle(
                color: Color(0xFF264050),
                fontSize: 25.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w700,
                height: 1.2,
                letterSpacing: -0.30,
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: Container(
                width: 363.w,
                height: 62.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFC113),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF264050),
                      fontSize: 24.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w500,
                      height: 0.04,
                      letterSpacing: -0.30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 55.h,
          ),
          Center(
            child: Text(
              'Dont have an account?',
              style: TextStyle(
                color: Color(0xFF264050),
                fontSize: 15.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w400,
                height: 0.08,
                letterSpacing: -0.30,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Signup()));
              },
              child: Container(
                width: 144.w,
                height: 38.h,
                decoration: ShapeDecoration(
                  color: Color(0xFF264050),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                ),
                child: Center(
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                      letterSpacing: -0.30,
                    ),
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
