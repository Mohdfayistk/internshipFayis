import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/PaymentPage.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Order Summary',
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
              height: 40.h,
            ),
            Container(
              width: 430.w,
              height: 188.h,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 35.w, top: 40.h),
                    child: Text(
                      'Deliver to :',
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
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35.w),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240.w,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Hunais Muhammed\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'House,Place,State,\nPin,Phone number',
                                  style: TextStyle(
                                    color: Color(0xFF264050),
                                    fontSize: 18.sp,
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
                          width: 30.w,
                        ),
                        Container(
                          width: 98.w,
                          height: 34.h,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.w, color: Color(0xFFF4F4F4)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Change Address',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF2C495A),
                                fontSize: 11.sp,
                                fontFamily: 'hello',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: 430.w,
              height: 181.h,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                      width: 163.w,
                      height: 140.h,
                      child: Image.asset("assets/TV3.png")),
                  SizedBox(
                    width: 40.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 70.h,
                      ),
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
                        height: 15.h,
                      ),
                      SizedBox(
                          width: 76.20.w,
                          height: 10.99.h,
                          child: Image.asset("assets/star1.png")),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 80.w,
                        child: Text(
                          'SAR 50,000',
                          style: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: 430.w,
              height: 197.h,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
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
                        height: 0.09,
                        letterSpacing: 0.10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
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
                    height: 10.h,
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
                        width: 260.w,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          'SAR 50,000',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF6A6969),
                            fontSize: 14.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
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
                        width: 235.w,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          '-  SAR 2,000',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF0A8200),
                            fontSize: 14.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22.w,
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
                        width: 174.w,
                      ),
                      Text(
                        'Delivery Charges',
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
                    height: 16.h,
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
                    height: 16.h,
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
                          fontSize: 14.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 230.w,
                      ),
                      SizedBox(
                        width: 80.w,
                        child: Text(
                          'SAR 48,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: 430.w,
              height: 75.h,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    'SAR 48,000',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PaymentPage()));
                    },
                    child: Container(
                      width: 197.w,
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
