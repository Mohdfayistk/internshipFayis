import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

String gender = "male";

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: Column(
        children: [
          Container(
            width: 430.w,
            height: 136.h,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.only(left: 35.w, top: 40.h),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Payments',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Container(
            width: 430.w,
            height: 202.h,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text(
                    'Payment Methods',
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 20.sp,
                      fontFamily: 'Gadugi',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Container(
                  width: 430.w,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.10.w,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF9E9999),
                      ),
                    ),
                  ),
                ),
                RadioListTile(
                  hoverColor: Color(0xff264050),
                  activeColor:Color(0xff264050),
                  title: Text("Cash on Delivery'"),
                  value: "Cash on Delivery'",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  hoverColor:Color(0xff264050),
                  activeColor: Color(0xff264050),
                  title: Text("PayFort"),
                  value: "PayFort",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h,),
          Container(
            width: 430.w,
            height: 134.h,
            decoration: BoxDecoration(color: Colors.white),
            child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 30.w),
                  child: Text(
                    'Apply Coupon',
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 20.sp,
                      fontFamily: 'Gadugi',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),
                Row(
                  children: [
                    SizedBox(width: 30.w,),
                    Container(
                      width: 245.w,
                      height: 44.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w,),
                    Text(
                      'Apply',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'Gadugi',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
