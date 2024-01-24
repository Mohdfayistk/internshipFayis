import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

TextEditingController ApplyCoupon = TextEditingController();
String gender = "male";

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
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
                        fontFamily: 'hello',
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
                    activeColor: Color(0xff264050),
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
                    hoverColor: Color(0xff264050),
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
            SizedBox(
              height: 32.h,
            ),
            Container(
                width: 430.w,
                height: 134.h,
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
                        'Apply Coupon',
                        style: TextStyle(
                          color: Color(0xFF626262),
                          fontSize: 20.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.w,
                        ),
                        Container(
                          width: 245.w,
                          height: 44.h,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF3F3F3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: TextFormField(
                            style: TextStyle(color: Color(0xff767676)),
                            controller: ApplyCoupon,
                            autofocus: false,
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          'Apply',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: 430.w,
              height: 230.h,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22.w),
                    child: Text(
                      'Price Details',
                      style: TextStyle(
                        color: Color(0xFF525252),
                        fontSize: 14.sp,
                        fontFamily: 'hello',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
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
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Color(0xFF6A6969),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 280.w,
                      ),
                      Text(
                        'SAR 50,000',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF6A6969),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        'Discount',
                        style: TextStyle(
                          color: Color(0xFF6A6969),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 254.w,
                      ),
                      Text(
                        '- SAR 2,000',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF0A8200),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        'Coupon Discount',
                        style: TextStyle(
                          color: Color(0xFF6A6969),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 209.w,
                      ),
                      Text(
                        '- SAR 500',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF0A8200),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22.h,
                      ),
                      Text(
                        'Delivery Charges',
                        style: TextStyle(
                          color: Color(0xFF6A6969),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 190.w,
                      ),
                      Text(
                        'Free Delivery',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF006404),
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
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
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        'Total Amount',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                          letterSpacing: 0.10,
                        ),
                      ),
                      SizedBox(
                        width: 200.w,
                      ),
                      Text(
                        'SAR 47,500',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.8.h,
            ),
            Container(
              width: 430.w,
              height: 75.h,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: 29.w,
                  ),
                  Text(
                    'SAR 47,500',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 38.w,
                  ),
                  Container(
                    width: 180.w,
                    height: 42.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFC113),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
