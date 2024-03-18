import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../BLOC/offerbanner/offer_banner_bloc.dart';
import '../Repository/ModelClass/Banner.dart';

class BestOffers extends StatefulWidget {
  const BestOffers({Key? key}) : super(key: key);

  @override
  State<BestOffers> createState() => _BestOffersState();
}

late List<BannerModel> data;

class _BestOffersState extends State<BestOffers> {
  @override
  void initState() {
    BlocProvider.of<OfferBannerBloc>(context).add(FetchOfferBanner());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                  'Best Offers',
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
              height: 30.h,
            ),
            SizedBox(
              height: 750.h,
              child: BlocBuilder<OfferBannerBloc, OfferBannerState>(
                  builder: (context, state) {
                if (state is OfferBannerBlocLoading) {
                  return Center(
                    child: SizedBox(),
                  );
                }
                if (state is OfferBannerBlocError) {
                  return Text('error');
                }
                if (state is OfferBannerBlocLoaded) {
                  data = BlocProvider.of<OfferBannerBloc>(context)
                      .offerBannerModel;
                  return GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: List.generate(
                      data.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(14.r),
                                        topLeft: Radius.circular(14.r),
                                      ),
                                      child: Image.asset(
                                        data[0].banner![0].url.toString(),
                                        width: 145.w,
                                        height: 130.h,
                                      ),
                                    ),
                                    Container(
                                      width: 146.w,
                                      height: 3.h,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFC113)),
                                    ),
                                    Container(
                                      width: 146.w,
                                      height: 55.h,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE2E2E2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              'Big Deals',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFFF6700),
                                                fontSize: 12.sp,
                                                fontFamily: 'hello',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                                letterSpacing: -0.30,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              'Starrting @ 20000/-',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF293744),
                                                fontSize: 12,
                                                fontFamily: 'hello',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                                letterSpacing: -0.30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.h, left: .5.w),
                                  child: Image.asset("assets/13.png"),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 24.h),
                                  child: Text(
                                    '10% Off',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'hello',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 115.h, left: 9.w),
                                  child: Container(
                                    width: 128.w,
                                    height: 26.h,
                                    decoration: ShapeDecoration(
                                      color: Colors.black
                                          .withOpacity(0.800000011920929),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          'Television',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontFamily: 'hello',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        SizedBox(
                                          height: 12.h,
                                          child: Container(
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 0.50,
                                                  strokeAlign: BorderSide
                                                      .strokeAlignCenter,
                                                  color: Color(0xFFFFC113),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 18.w,
                                        ),
                                        SizedBox(
                                            width: 16.w,
                                            height: 16.h,
                                            child:
                                                Image.asset("assets/14.png")),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return SizedBox();
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
