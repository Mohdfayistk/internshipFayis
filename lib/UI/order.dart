import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/ordertracking.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                //
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  'Orders',
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
              height: 55.h,
            ),
            SizedBox(
              height: 700.h,
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
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 34.w,
                            ),
                            CircleAvatar(
                              radius: 18.r,
                              backgroundColor: Color(0xFF264050),
                              child: SizedBox(
                                  width: 18.w,
                                  height: 18.h,
                                  child: Image.asset("assets/25.png")),
                            ),
                            SizedBox(
                              width: 29.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivery expected by ',
                                  style: TextStyle(
                                    color: Color(0xFFB3B3B3),
                                    fontSize: 14.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Mon, 30 May 2023',
                                  style: TextStyle(
                                    color: Color(0xFFC1C1C1),
                                    fontSize: 10.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => OrderTracking()));
                            },
                            child: Container(
                              width: 363.w,
                              height: 111.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFBFBFB),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.r)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  SizedBox(
                                      width: 87.w,
                                      height: 94.h,
                                      child: Image.asset("assets/TV3.png")),
                                  SizedBox(
                                    width: 26.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Text(
                                        'Television 32’’ Smart TV',
                                        style: TextStyle(
                                          color: Color(0xFF1D1D1B),
                                          fontSize: 16.sp,
                                          fontFamily: 'hello',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '₹ 50,000',
                                        style: TextStyle(
                                          color: Color(0xFF7C7C7C),
                                          fontSize: 14.sp,
                                          fontFamily: 'hello',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 35.w,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xff717171),
                                    size: 24.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Center(
                          child: Container(
                            width: 363.w,
                            height: 50.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFBFBFB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.r)),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 23.w,
                                ),
                                Text(
                                  'Rate Product',
                                  style: TextStyle(
                                    color: Color(0xFFC1C1C1),
                                    fontSize: 15.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 26.w,
                                ),
                                SizedBox(
                                    width: 113.w,
                                    height: 16.h,
                                    child: Image.asset("assets/26.png")),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),

            SizedBox(
              height: 60.h,
            ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 34.w,
            //     ),
            //     Stack(
            //       children: [
            //         CircleAvatar(
            //           radius: 18.r,
            //           backgroundColor: Color(0xFF264050),
            //           child: SizedBox(
            //               width: 18.w,
            //               height: 18.h,
            //               child: Image.asset("assets/25.png")),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 24.w, top: 23.h),
            //           child: SizedBox(
            //               width: 14.w,
            //               height: 14.h,
            //               child: Image.asset("assets/29.png")),
            //         )
            //       ],
            //     ),
            //     SizedBox(
            //       width: 33.w,
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Delivered',
            //           style: TextStyle(
            //             color: Color(0xFF006404),
            //             fontSize: 14.sp,
            //             fontFamily: 'hello',
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //         Text(
            //           'On  Sun, 30 May 2023',
            //           style: TextStyle(
            //             color: Color(0xFFC1C1C1),
            //             fontSize: 10.sp,
            //             fontFamily: 'hello',
            //             fontWeight: FontWeight.w400,
            //           ),
            //         ),
            //       ],
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 17.h,
            // ),
            // Center(
            //   child: Container(
            //     width: 363.w,
            //     height: 111.h,
            //     decoration: ShapeDecoration(
            //       color: Color(0xFFFBFBFB),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(2.r)),
            //     ),
            //     child: Row(
            //       children: [
            //         SizedBox(
            //             width: 87.w,
            //             height: 94.h,
            //             child: Image.asset("assets/27.png")),
            //         SizedBox(
            //           width: 10.w,
            //         ),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               height: 40.h,
            //             ),
            //             Text(
            //               'Automated Washing Machine',
            //               style: TextStyle(
            //                 color: Color(0xFF1D1D1B),
            //                 fontSize: 16.sp,
            //                 fontFamily: 'hello',
            //                 fontWeight: FontWeight.w400,
            //               ),
            //             ),
            //             Text(
            //               '₹ 26,000',
            //               style: TextStyle(
            //                 color: Color(0xFF7C7C7C),
            //                 fontSize: 14.sp,
            //                 fontFamily: 'hello',
            //                 fontWeight: FontWeight.w400,
            //               ),
            //             )
            //           ],
            //         ),
            //         SizedBox(
            //           width: 25.w,
            //         ),
            //         Icon(
            //           Icons.arrow_forward_ios,
            //           color: Color(0xff717171),
            //           size: 24.sp,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 6.h,
            // ),
            // Center(
            //   child: Container(
            //     width: 363.w,
            //     height: 50.h,
            //     decoration: ShapeDecoration(
            //       color: Color(0xFFFBFBFB),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(2.r)),
            //     ),
            //     child: Row(
            //       children: [
            //         SizedBox(
            //           width: 23.w,
            //         ),
            //         Text(
            //           'Rate Product',
            //           style: TextStyle(
            //             color: Color(0xFFC1C1C1),
            //             fontSize: 15.sp,
            //             fontFamily: 'hello',
            //             fontWeight: FontWeight.w400,
            //           ),
            //         ),
            //         SizedBox(
            //           width: 26.w,
            //         ),
            //         SizedBox(
            //             width: 113.w,
            //             height: 16.h,
            //             child: Image.asset("assets/26.png")),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 44.h,
            // ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 34.w,
            //     ),
            //     Stack(
            //       children: [
            //         CircleAvatar(
            //           radius: 18.r,
            //           backgroundColor: Color(0xFF264050),
            //           child: SizedBox(
            //               width: 18.w,
            //               height: 18.h,
            //               child: Image.asset("assets/25.png")),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 26.w, top: 25.h),
            //           child: Container(
            //             width: 10.w,
            //             height: 10.h,
            //             decoration: ShapeDecoration(
            //               color: Color(0xFFA50202),
            //               shape: OvalBorder(
            //                 side:
            //                     BorderSide(width: 0.50.w, color: Colors.white),
            //               ),
            //             ),
            //             child: Image.asset("assets/30.png"),
            //           ),
            //         )
            //       ],
            //     ),
            //     SizedBox(
            //       width: 33.w,
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Cancelled',
            //           style: TextStyle(
            //             color: Color(0xFFA60202),
            //             fontSize: 14.sp,
            //             fontFamily: 'hello',
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //         Text(
            //           'On  Sun, 30 July 2023',
            //           style: TextStyle(
            //             color: Color(0xFFC1C1C1),
            //             fontSize: 10.sp,
            //             fontFamily: 'hello',
            //             fontWeight: FontWeight.w400,
            //           ),
            //         )
            //       ],
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 17.h,
            // ),
            // Center(
            //   child: Container(
            //     width: 363.w,
            //     height: 111.h,
            //     decoration: ShapeDecoration(
            //       color: Color(0xFFFBFBFB),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(2.r)),
            //     ),
            //     child: Row(
            //       children: [
            //         SizedBox(
            //           width: 20.w,
            //         ),
            //         SizedBox(
            //             width: 87.w,
            //             height: 94.h,
            //             child: Image.asset("assets/28.png")),
            //         SizedBox(
            //           width: 30.w,
            //         ),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               height: 40.h,
            //             ),
            //             Text(
            //               'Washing Machine',
            //               style: TextStyle(
            //                 color: Color(0xFF1D1D1B),
            //                 fontSize: 16.sp,
            //                 fontFamily: 'hello',
            //                 fontWeight: FontWeight.w400,
            //               ),
            //             ),
            //             Text(
            //               '₹ 20,000',
            //               style: TextStyle(
            //                 color: Color(0xFF7C7C7C),
            //                 fontSize: 14.sp,
            //                 fontFamily: 'hello',
            //                 fontWeight: FontWeight.w400,
            //               ),
            //             )
            //           ],
            //         ),
            //         SizedBox(
            //           width: 70.w,
            //         ),
            //         Icon(
            //           Icons.arrow_forward_ios,
            //           color: Color(0xff717171),
            //           size: 24.sp,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 6.h,
            // ),
            // Center(
            //   child: Container(
            //     width: 363.w,
            //     height: 50.h,
            //     decoration: ShapeDecoration(
            //       color: Color(0xFFFBFBFB),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(2.r)),
            //     ),
            //     child: Row(
            //       children: [
            //         SizedBox(
            //           width: 23.w,
            //         ),
            //         Text(
            //           'Rate Product',
            //           style: TextStyle(
            //             color: Color(0xFFC1C1C1),
            //             fontSize: 15.sp,
            //             fontFamily: 'hello',
            //             fontWeight: FontWeight.w400,
            //           ),
            //         ),
            //         SizedBox(
            //           width: 26.w,
            //         ),
            //         SizedBox(
            //             width: 113.w,
            //             height: 16.h,
            //             child: Image.asset("assets/26.png")),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 50.h,
            // ),
          ],
        ),
      ),
    );
  }
}
