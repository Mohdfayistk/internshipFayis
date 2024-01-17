import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    SizedBox(
      height: 65.h,
    ),
    Row(
      children: [
        SizedBox(
          width: 30.w,
        ),
        GestureDetector(onTap: (){
          Navigator.pop(context);
        },
          child: Icon(
            Icons.arrow_back,
            size: 24.sp,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          'Orders',
          style: TextStyle(
            color: Color(0xFF463507),
            fontSize: 20.sp,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ),
  ],
),
    );
  }
}
