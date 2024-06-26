import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intership/UI/Orderpage.dart';
import 'package:intership/main.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../BLOC/cart/cart_bloc.dart';
import '../BLOC/productdetails/product_details_bloc.dart';

import '../Repository/ModelClass/ProductDetailsModel.dart';

class Tv extends StatefulWidget {
  final String id;

  const Tv({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<Tv> createState() => _TvState();
}

int count = 1;
int currentIndex = 0;
late ProductDetailsModel data;

class _TvState extends State<Tv> {
  var controller;

  @override
  void initState() {
    controller = PageController(initialPage: currentIndex);
    BlocProvider.of<ProductDetailsBloc>(context)
        .add(FetchProductDetails(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(child:
        BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
            builder: (context, state) {
      if (state is ProductDetailsBlocLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is ProductDetailsBlocError) {
        return Text('error');
      }
      if (state is ProductDetailsBlocLoaded) {
        data = BlocProvider.of<ProductDetailsBloc>(context).productDetailsmodel;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: SizedBox(
                width: 275.w,
                height: 333.h,
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                      //Slider Container properties
                      options: CarouselOptions(
                        onPageChanged: (index, a) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        height: 200.h,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 300),
                        viewportFraction: 1.0,
                      ),
                      itemCount: data.product!.images!.length,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        String url =
                            data.product!.images![index].url.toString();
                        String newUrl =
                            url.replaceFirst("http://127.0.0.1/api", "");
                        return Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(basePath + newUrl),
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 180.h),
                      child: Center(
                        child: Container(
                            decoration: ShapeDecoration(
                                color: Color(0x7FF1F1F1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: AnimatedSmoothIndicator(
                              activeIndex: currentIndex,
                              count: data.product!.images!.length,
                              effect: WormEffect(dotHeight: 7.h, dotWidth: 7.w),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35.w),
                  child: SizedBox(
                    width: 270.w,
                    child: Text(
                      data.product!.name.toString() ?? '',
                      style: TextStyle(
                        color: Color(0xFF1D1D1B),
                        fontSize: 25.sp,
                        fontFamily: 'hello',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  data.product!.price.toString(),
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 16.sp,
                    fontFamily: 'hello',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
                padding: EdgeInsets.only(left: 35.w),
                child: RatingBar.builder(
                  initialRating: double.parse(data.product!.rating.toString()),
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
              height: 17.h,
            ),
            Center(
              child: Container(
                width: 344.w,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.w,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFF0F0F0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 74.w),
              child: Row(
                children: [
                  Text(
                    '1 - 10 sets',
                    style: TextStyle(
                      color: Color(0xFF1D1D1B),
                      fontSize: 12.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                      letterSpacing: 0.10,
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text(
                    '10 - 50 sets',
                    style: TextStyle(
                      color: Color(0xFF1D1D1B),
                      fontSize: 12.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                      letterSpacing: 0.10,
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text(
                    '50 - 100 sets',
                    style: TextStyle(
                      color: Color(0xFF1D1D1B),
                      fontSize: 12.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                      letterSpacing: 0.10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 72.w),
              child: Row(
                children: [
                  Text(
                    '₹ 50,000',
                    style: TextStyle(
                      color: Color(0xFF1D1D1B),
                      fontSize: 16.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                      letterSpacing: 0.10,
                    ),
                  ),
                  SizedBox(
                    width: 47.w,
                  ),
                  Text(
                    '₹ 49,000',
                    style: TextStyle(
                      color: Color(0xFF1D1D1B),
                      fontSize: 16.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                      letterSpacing: 0.10,
                    ),
                  ),
                  SizedBox(
                    width: 49.w,
                  ),
                  Text(
                    '₹ 47,000',
                    style: TextStyle(
                      color: Color(0xFF1D1D1B),
                      fontSize: 16.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                      letterSpacing: 0.10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                width: 344.w,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.w,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFF0F0F0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 150.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (count > 1) {
                        setState(() {
                          count = count - 1;
                        });
                      }
                    },
                    child: Container(
                      width: 39.05.w,
                      height: 36.26.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      child: Center(
                          child: Container(
                        width: 15.w,
                        height: 2.h,
                        decoration: ShapeDecoration(
                          color: Color(0xff929292),
                          shape: RoundedRectangleBorder(),
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 65.54.w,
                    height: 36.26.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        count.toString(),
                        style: TextStyle(
                          color: Color(0xFF919191),
                          fontSize: 18.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w500,
                          height: 0.06,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        count = count + 1;
                      });
                    },
                    child: Container(
                      width: 39.05.w,
                      height: 36.26.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: Color(0xFF919191),
                            fontSize: 18.sp,
                            fontFamily: 'hello',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21.h),
            Center(
              child: BlocListener<CartBloc, CartState>(
                listener: (context, state) {
                  if (state is CartBlocLoading) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Container(
                            width: 60,
                            height: 60,
                            child: Center(
                              child: SizedBox(
                                width: 60.w,
                                height: 60.h,
                                child: LoadingIndicator(
                                  indicatorType: Indicator.ballSpinFadeLoader,

                                  /// Required, The loading type of the widget
                                  colors: const [Colors.white],

                                  /// Optional, The color collections
                                  strokeWidth: 1.w,

                                  /// Optional, The stroke of the line, only applicable to widget which contains line
                                  // Optional, the stroke backgroundColor
                                ),
                              ),
                            ),
                          );
                        });
                  }
                  if (state is CartBlocError) {
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                        msg: "Something went wrong  ",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    Text('error');
                  }
                  if (state is CartBlocLoaded) {
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                        msg: "Cart updated successfully ",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: InkWell(
                  onTap: () {
                    BlocProvider.of<CartBloc>(context).add(FetchCart(
                      varientId: data.product!.variants![0].id.toString(),
                      quantity: count,
                    ));
                  },
                  child: Container(
                    width: 343.w,
                    height: 63.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF264050),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'ADD TO CART',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontFamily: 'hello',
                          fontWeight: FontWeight.w500,
                          height: 0.06,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => OrderPage(
                          name: data.product!.name.toString(),
                          rating: data.product!.rating.toString(),
                          image: data.product!.images![0].url.toString(),
                          price: data.product!.price.toString(),
                          discount: data.product!.discountedAmount.toString(),
                          id: data.product!.id.toString())));
                },
                child: Container(
                  width: 343.w,
                  height: 63.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFC113),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'BUY NOW',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontFamily: 'hello',
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 43.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Text(
                'Product Detail',
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 20.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w700,
                  height: 0.04.h,
                ),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Center(
              child: SizedBox(
                width: 364.w,
                height: 220.h,
                child: Text(
                  data.product!.description.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'hello',
                    fontWeight: FontWeight.w400,
                    height: 1.5.h,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Text(
                'Rating & Reviews',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Row(
                children: [
                  SizedBox(
                      width: 87.w,
                      height: 13.h,
                      child: Image.asset("assets/star1.png")),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    'Terrific',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Text(
                'Value for Money',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Text(
                'Shafeek',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 14.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Row(
                children: [
                  SizedBox(
                      width: 87.w,
                      height: 13.h,
                      child: Image.asset("assets/star1.png")),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    'Terrific',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Text(
                'Good Product',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w),
              child: Text(
                'Arun',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 14.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        );
      } else {
        return SizedBox();
      }
    })));
  }
}
