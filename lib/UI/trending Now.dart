import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intership/UI/Productdetails.dart';
import 'package:intership/UI/cartpage.dart';
import 'package:intership/UI/favorite.dart';

import 'package:intership/UI/order.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../BLOC/favorite/favorite_bloc.dart';
import '../BLOC/removefavorite/remove_favorite_bloc.dart';
import '../BLOC/trending/trending_bloc.dart';
import '../Repository/ModelClass/TrendingModel.dart';

class TrendingNow extends StatefulWidget {
  const TrendingNow({Key? key}) : super(key: key);

  @override
  State<TrendingNow> createState() => _TrendingNowState();
}

late List<TrendingModel> data;

class _TrendingNowState extends State<TrendingNow> {
  @override
  void initState() {
    BlocProvider.of<TrendingBloc>(context).add(FetchTrending());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 124.h,
        leadingWidth: 40.w,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back)),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: Text(
            'Trending Now',
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            // child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Favorite()));
                },
                child: Icon(Icons.favorite_border_outlined)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CartPage()));
                },
                child: Icon(Icons.shopping_cart_outlined)),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 740.h,
            child: BlocBuilder<TrendingBloc, TrendingState>(
                builder: (context, state) {
              if (state is TrendingBlocLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is TrendingBlocError) {
                return Text('error');
              }
              if (state is TrendingBlocLoaded) {
                data = BlocProvider.of<TrendingBloc>(context).trendingModel;
                return ListView.separated(
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
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) =>
                                  Tv(id: data[index].id.toString())));
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50.w,
                            ),
                            SizedBox(
                                width: 103.w,
                                height: 87.h,
                                child: data[index].images!.isEmpty
                                    ? Image.asset("name")
                                    : Image.network(
                                        data[index].images![0].url.toString())),
                            SizedBox(
                              width: 50.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 150.w,
                                      child: Text(
                                        data[index].name.toString(),
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
                                      width: 30.w,
                                    ),
                                    BlocListener<FavoriteBloc, FavoriteState>(
                                      listener: (context, state) {
                                        if (state is FavoriteBlocLoading) {
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
                                        if (state is FavoriteBlocError) {
                                          Navigator.of(context).pop();
                                          Fluttertoast.showToast(
                                              msg: "Something went wrong",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Colors.red,
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                                          Text('error');
                                        }
                                        if (state is FavoriteBlocLoaded) {
                                          Navigator.of(context).pop();
                                          Fluttertoast.showToast(
                                              msg: "Added to wish list",
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
                                            BlocProvider.of<FavoriteBloc>(
                                                    context)
                                                .add(FetchFavorite(
                                              varientId: data[index]
                                                  .variants![0]
                                                  .id
                                                  .toString(),
                                            ));
                                          },
                                          child: Icon(
                                              Icons.favorite_border_outlined)),
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
                                        data[index].rating.toString()),
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
                                  data[index].price.toString(),
                                  style: TextStyle(
                                    color: Color(0xFF7C7C7C),
                                    fontSize: 14.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ));
                    });
              } else {
                return SizedBox();
              }
            }),
          ),
        ],
      ),
    );
  }
}
