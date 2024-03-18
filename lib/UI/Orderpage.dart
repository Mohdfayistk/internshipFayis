import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/PaymentPage.dart';

import '../BLOC/address/address_bloc.dart';
import '../Repository/ModelClass/Address.dart';

class OrderPage extends StatefulWidget {
  final String name;
  final String rating;
  final String image;
  final String price;
  final String discount;
  final String id;

  const OrderPage(
      {Key? key,
      required this.name,
      required this.rating,
      required this.image,
      required this.price,
      required this.discount,
      required this.id})
      : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

late List<Address> data;

class _OrderPageState extends State<OrderPage> {
  @override
  void initState() {
    BlocProvider.of<AddressBloc>(context).add(FetchAddress());
    super.initState();
  }

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
                          width: 200.w,
                          child: BlocBuilder<AddressBloc, AddressState>(
                              builder: (context, state) {
                            if (state is AddressBlocLoading) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state is AddressBlocError) {
                              return Text('error');
                            }
                            if (state is AddressBlocLoaded) {
                              data = BlocProvider.of<AddressBloc>(context)
                                  .addressModel;
                              return Text(
                                '${data[0].fullName},${data[0].address},${data[0].phone}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontFamily: 'hello',
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 2,
                              );
                            } else {
                              return SizedBox();
                            }
                          }),
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
                    width: 40.w,
                  ),
                  SizedBox(
                      width: 120.w,
                      height: 120.h,
                      child: Image.asset(
                        widget.image,
                      )),
                  SizedBox(
                    width: 40.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 70.h,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            color: Color(0xFF1D1D1B),
                            fontSize: 14.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                          width: 150.w,
                          child: RatingBar.builder(
                            initialRating: double.parse(widget.rating),
                            minRating: 0,
                            itemSize: 20.sp,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ignoreGestures: true,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              size: 5.sp,
                              color: Colors.deepOrange,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 80.w,
                        child: Text(
                          widget.price,
                          style: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w400,
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
                          'SAR ${widget.price}',
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
                        'discountedPrice',
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
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          'SAR ${widget.discount}',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => PaymentPage(
                                    id: widget.id,
                                    price: widget.price,
                                    discount: widget.discount,
                                  )));
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
