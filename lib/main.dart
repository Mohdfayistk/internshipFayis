import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/BLOC/addaddress/addaddress_bloc.dart';
import 'package:intership/BLOC/banner/banner_bloc.dart';
import 'package:intership/BLOC/favorite/favorite_bloc.dart';
import 'package:intership/UI/firstscreen.dart';

import 'BLOC/Login/login_bloc.dart';
import 'BLOC/Signup/signup_bloc.dart';
import 'BLOC/address/address_bloc.dart';
import 'BLOC/bestoffer/bestoffer_bloc.dart';
import 'BLOC/brand/brand_bloc.dart';
import 'BLOC/cart/cart_bloc.dart';
import 'BLOC/category/category_bloc.dart';
import 'BLOC/changepassword/changepassword_bloc.dart';
import 'BLOC/coupon/coupon_bloc.dart';
import 'BLOC/getcart/get_cart_bloc.dart';
import 'BLOC/getfavorite/get_favorite_bloc.dart';
import 'BLOC/offerbanner/offer_banner_bloc.dart';
import 'BLOC/productdetails/product_details_bloc.dart';
import 'BLOC/profile/profile_bloc.dart';
import 'BLOC/removecart/remove_cart_bloc.dart';
import 'BLOC/removefavorite/remove_favorite_bloc.dart';
import 'BLOC/search/search_bloc.dart';
import 'BLOC/trending/trending_bloc.dart';
import 'BLOC/trendingnow/trendingnow_bloc.dart';

const basePath = 'http://fursancart.rootsys.in/api';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => CouponBloc(),
              ),
              BlocProvider(
                create: (context) => OfferBannerBloc(),
              ),
              BlocProvider(
                create: (context) => SearchBloc(),
              ),
              BlocProvider(
                create: (context) => RemoveCartBloc(),
              ),
              BlocProvider(
                create: (context) => RemoveFavoriteBloc(),
              ),
              BlocProvider(
                create: (context) => GetFavoriteBloc(),
              ),
              BlocProvider(
                create: (context) => TrendingBloc(),
              ),
              BlocProvider(
                create: (context) => FavoriteBloc(),
              ),
              BlocProvider(
                create: (context) => GetCartBloc(),
              ),
              BlocProvider(
                create: (context) => CartBloc(),
              ),
              BlocProvider(
                create: (context) => ProductDetailsBloc(),
              ),
              BlocProvider(
                create: (context) => BestOfferBloc(),
              ),
              BlocProvider(
                create: (context) => TrendingNowBloc(),
              ),
              BlocProvider(
                create: (context) => BannerBloc(),
              ),
              BlocProvider(
                create: (context) => AddressBloc(),
              ),
              BlocProvider(
                create: (context) => ProfileBloc(),
              ),
              BlocProvider(
                create: (context) => CategoryBloc(),
              ),
              BlocProvider(
                create: (context) => SignupBloc(),
              ),
              BlocProvider(
                create: (context) => LoginBloc(),
              ),
              BlocProvider(
                create: (context) => BrandBloc(),
              ),
              BlocProvider(
                create: (context) => AddaddressBloc(),
              ),
              BlocProvider(
                create: (context) => ChangePasswordBloc(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                // This is the theme of your application.
                //
                // TRY THIS: Try running your application with "flutter run". You'll see
                // the application has a purple toolbar. Then, without quitting the app,
                // try changing the seedColor in the colorScheme below to Colors.green
                // and then invoke "hot reload" (save your changes or press the "hot
                // reload" button in a Flutter-supported IDE, or press "r" if you used
                // the command line to start the app).
                //
                // Notice that the counter didn't reset back to zero; the application
                // state is not lost during the reload. To reset the state, use hot
                // restart instead.
                //
                // This works for code too, not just values: Most code changes can be
                // tested with just a hot reload.
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: firstscreen(),
            ),
          );
        });
  }
}
