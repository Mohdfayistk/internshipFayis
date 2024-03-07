

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:lottie/lottie.dart';

import '../BLOC/getcart/get_cart_bloc.dart';
import '../BLOC/removecart/remove_cart_bloc.dart';
import '../Repository/ModelClass/GetCartModel.dart';

bool isChecked = true;

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

late GetCartModel data;

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    BlocProvider.of<GetCartBloc>(context).add(FetchGetCart());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
              width: 10.h,
            ),
            Text(
              'Cart',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        SizedBox(
          height: 740.h,
          child:
              BlocBuilder<GetCartBloc, GetCartState>(builder: (context, state) {
            if (state is GetCartBlocLoading) {
              return Center(
                child:  SizedBox(),
              );
            }
            if (state is GetCartBlocError) {
              return Text('error');
            }
            if (state is GetCartBlocLoaded) {
              data = BlocProvider.of<GetCartBloc>(context).getCartModel;
              return data.cartProducts!.length == 0
                  ? Center(
                      child: SizedBox(
                          width: 200.w,
                          height: 200.h,
                          child: Lottie.asset('assets/nodata3.json')),
                      widthFactor: 10.w,
                      heightFactor: 10.h,
                    )
                  : ListView.separated(
                      separatorBuilder: (ctx, index) {
                        return Container(
                          width: 100.w,
                          height: 100.h,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: Divider(
                              color: Color(0xffF8F8F8),
                            ),
                          ),
                        );
                      },
                      itemCount: data.cartProducts!.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: isChecked,
                                activeColor: Colors.black,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = !isChecked;
                                  });
                                }),
                            SizedBox(
                                width: 103.w,
                                height: 87.h,
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Image.network(
                                      data.cartProducts![index].productVarient!
                                          .product!.images
                                          .toString(),
                                    ))),
                            SizedBox(
                              width: 50.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 130.w,
                                      child: Text(
                                        data.cartProducts![index]
                                            .productVarient!.product!.name
                                            .toString(),
                                        style: TextStyle(
                                          color: Color(0xFF1D1D1B),
                                          fontSize: 14.sp,
                                          fontFamily: 'hello',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                    ),
                                    Column(
                                      children: [
                                        BlocListener<RemoveCartBloc,
                                            RemoveCartState>(
                                          listener: (context, state) {
                                            if (state
                                                is RemoveCartBlocLoading) {
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
                                                          child:
                                                              LoadingIndicator(
                                                            indicatorType: Indicator
                                                                .ballSpinFadeLoader,

                                                            /// Required, The loading type of the widget
                                                            colors: const [
                                                              Colors.white
                                                            ],

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
                                            if (state is RemoveCartBlocError) {
                                              Navigator.of(context).pop();
                                              Fluttertoast.showToast(
                                                  msg: "Something went wrong",
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  gravity: ToastGravity.CENTER,
                                                  timeInSecForIosWeb: 1,
                                                  backgroundColor: Colors.red,
                                                  textColor: Colors.white,
                                                  fontSize: 16.0);
                                              Text('error');
                                            }
                                            if (state is RemoveCartBlocLoaded) {
                                              BlocProvider.of<GetCartBloc>(
                                                      context)
                                                  .add(FetchGetCart());
                                              Navigator.of(context).pop();
                                              Fluttertoast.showToast(
                                                  msg:
                                                      "Removed Form cart Successfully",
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  gravity: ToastGravity.CENTER,
                                                  timeInSecForIosWeb: 1,
                                                  backgroundColor:
                                                      Colors.black54,
                                                  textColor: Colors.white,
                                                  fontSize: 16.0);
                                            }
                                          },
                                          child: InkWell(
                                              onTap: () {
                                                BlocProvider.of<RemoveCartBloc>(
                                                        context)
                                                    .add(FetchRemoveCart(
                                                  id: data.cartProducts![0].id
                                                      .toString(),
                                                ));
                                              },
                                              child: Icon(
                                                Icons.clear_rounded,
                                                size: 18.sp,
                                                color: Color(0xFF7C7C7C),
                                              )),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Icon(Icons.favorite_border_outlined),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                SizedBox(
                                  width: 140.w,
                                  child: RatingBar.builder(
                                    initialRating: double.parse(
                                      data.cartProducts![index].productVarient!
                                          .product!.rating
                                          .toString(),
                                    ),
                                    minRating: 0,
                                    itemSize: 18.sp,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    ignoreGestures: true,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 5.sp,
                                      color: Colors.deepOrange,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  data.cartProducts![index].productVarient!
                                      .product!.price
                                      .toString(),
                                  style: TextStyle(
                                    color: Color(0xFF7C7C7C),
                                    fontSize: 14.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Container(
                                  width: 45.w,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffEEEEEE)),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      data.cartProducts![index].quantity
                                          .toString(),
                                      style: TextStyle(
                                        color: Color(0xFF7C7C7C),
                                        fontSize: 18.sp,
                                        fontFamily: 'hello',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ));
                      });
            } else {
              return SizedBox();
            }
          }),
        ),
      ],
    ));
  }
}
