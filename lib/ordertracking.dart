import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                width: 10.w,
              ),
              Text(
                'Order Details',
                style: TextStyle(
                  color: Color(0xFF463507),
                  fontSize: 20.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            width: 434.w,
            height: 137.h,
            decoration: ShapeDecoration(
              color: Color(0xFFFBFBFB),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 53.w),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        'Television 32’’ Smart TV',
                        style: TextStyle(
                          color: Color(0xFF1D1D1B),
                          fontSize: 16.sp,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 15.w,
                      ),
                      Text(
                        '₹ 50,000',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 14.sp,
                          fontFamily: 'Brandon Grotesque',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                  SizedBox(
                      width: 87.w,
                      height: 94.h,
                      child: Image.asset("assets/TV3.png")),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
              width: 434.w,
              height: 440.h,
              decoration: ShapeDecoration(
                color: Color(0xFFFBFBFB),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
              ),
              child: OrderTrackerZen(
                tracker_data: [
                  TrackerData(
                    title: "Order Confirmed ",
                    date: "",
                    tracker_details: [
                      TrackerDetails(
                        title: "On  Sun, 30 May 2023",
                        datetime: "",
                      ),
                    ],
                  ),
                  TrackerData(
                    title: "Shipped",
                    date: "",
                    tracker_details: [
                      TrackerDetails(
                        title: "Expected  Sun, 30 May 2023",
                        datetime: "",
                      ),
                    ],
                  ),
                  TrackerData(
                    title: "Out for delivery",
                    date: "",
                    tracker_details: [
                      TrackerDetails(
                        title: "Expected  Sun, 30 May 2023",
                        datetime: "",
                      ),
                    ],
                  ),
                  TrackerData(
                    title: "Delivery",
                    date: "",
                    tracker_details: [
                      TrackerDetails(
                        title: "Expected  Sun, 30 June 2023",
                        datetime: "",
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(height: 10.h,),
          Container(
            width: 434.w,
            height: 64.h,
            decoration: ShapeDecoration(
              color: Color(0xFFFBFBFB),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            ),
            child: Center(
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xFF5C5C5C),
                  fontSize: 20.sp,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
