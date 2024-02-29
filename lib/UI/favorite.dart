import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../BLOC/getfavorite/get_favorite_bloc.dart';
import '../BLOC/removefavorite/remove_favorite_bloc.dart';
import '../Repository/ModelClass/GetFavoriteModel.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

late GetFavoriteModel data;

class _FavoriteState extends State<Favorite> {
  @override
  void initState() {
    BlocProvider.of<GetFavoriteBloc>(context).add(FetchGetFavorite());
    super.initState();
  }
  @override
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
                'Favourites',
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
            height: 740.h,
            child: BlocBuilder<GetFavoriteBloc, GetFavoriteState>(
                builder: (context, state) {
              if (state is GetFavoriteBlocLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is GetFavoriteBlocError) {
                return Text('error');
              }
              if (state is GetFavoriteBlocLoaded) {
                data =
                    BlocProvider.of<GetFavoriteBloc>(context).getFavoriteModel;
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
                    itemCount: data.items!.length,
                    itemBuilder: (context, position) {
                      return SizedBox(
                          child: Row(
                        children: [
                          SizedBox(
                            width: 50.w,
                          ),
                          SizedBox(
                              width: 103.w,
                              height: 87.h,
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(data.items![0].variant!
                                      .product!.images![0].url
                                      .toString()))),
                          SizedBox(
                            width: 50.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 140.w,
                                    child: Text(
                                      data.items![0].variant!.product!.name
                                          .toString(),
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
                                  BlocListener<RemoveFavoriteBloc, RemoveFavoriteState>(
  listener: (context, state) {
    if (state is RemoveFavoriteBlocLoading) {
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
    indicatorType:
    Indicator.ballSpinFadeLoader,

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
    if (state is RemoveFavoriteBlocError) {
    Navigator.of(context).pop();
    Fluttertoast.showToast(
    msg: "Something went wrong",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0
    );
    Text('error');
    }
    if (state is RemoveFavoriteBlocLoaded) {
    Navigator.of(context).pop();
    Fluttertoast.showToast(
    msg: "Removed from wishlist",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black54,
    textColor: Colors.white,
    fontSize: 16.0
    );
    }

  },
  child: InkWell(onTap: (){
    BlocProvider.of<RemoveFavoriteBloc>(context).add(
        FetchRemoveFavorite(id: data.items![0].id.toString(),));
                                  },child: Icon(Icons.favorite_border_outlined)),
),
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              SizedBox(
                                width: 140.w,
                                child: RatingBar.builder(
                                  initialRating: double.parse(data
                                      .items![0].variant!.product!.rating
                                      .toString()),
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
                                data.items![0].variant!.product!.price
                                    .toString(),
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
