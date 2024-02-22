import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/Tv.dart';
import 'package:intership/UI/addaddress.dart';

import '../BLOC/category/category_bloc.dart';
import '../Repository/ModelClass/Category.dart';

class Categoryy extends StatefulWidget {
  const Categoryy({Key? key}) : super(key: key);

  @override
  State<Categoryy> createState() => _CategoryyState();
}

late List<Category> data;
List<bool> category = [false, false, false, false, false];

class _CategoryyState extends State<Categoryy> {
  @override
  void initState() {
    BlocProvider.of<CategoryBloc>(context).add(FetchCategory());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3f3f3),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              // Icon(Icons.arrow_back,),
              SizedBox(
                width: 15.w,
              ),
              Text(
                'Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 105.w,
              ),
              Icon(
                Icons.search,
                color: Color(0xff828282),
              ),
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: Color(0xff636363),
              ),
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xff636363),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
              height: 750.h,
              child: BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                if (state is CategoryBlocLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is CategoryBlocError) {
                  return Text('error');
                }
                if (state is CategoryBlocLoaded) {
                  data = BlocProvider.of<CategoryBloc>(context).categoryModel;
                  return ListView.separated(
                      separatorBuilder: (ctx, index) {
                        return Container(
                          width: 100.w,
                          height: 25.h,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20.w),
                          ),
                        );
                      },
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    category[index] = !category[index];
                                  });
                                },
                                child: Container(
                                  width: 364.w,
                                  height: 104.h,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 19.r,
                                        offset: Offset(0, 0),
                                        spreadRadius: -3,
                                      )
                                    ],
                                  ),
                                  child: Row(children: [
                                    SizedBox(
                                      width: 37.w,
                                    ),
                                    SizedBox(
                                        width: 71.w,
                                        height: 71.h,
                                        child: Image.network(
                                            data[index].image![0].url.toString())),
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Text(
                                      data[index].name.toString(),
                                      style: TextStyle(
                                        color: Color(0xFFA4A2A2),
                                        fontSize: 20.sp,
                                        fontFamily: 'hello',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 45.w,
                                    ),
                                    category[index] == false
                                        ? Icon(
                                            Icons.expand_more,
                                            color: Color(0xff9E9999),
                                            size: 34.sp,
                                          )
                                        : Icon(
                                            Icons.expand_less,
                                            color: Color(0xff9E9999),
                                            size: 34.sp,
                                          ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Visibility(
                                  visible: category[index],
                                  child: Container(
                                      width: 364.w,
                                      height: 204.h,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                        ),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x26000000),
                                            blurRadius: 19.r,
                                            offset: Offset(0, 0),
                                            spreadRadius: -3,
                                          )
                                        ],
                                      ),
                                      child: GridView.count(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 10.0,
                                        mainAxisSpacing: 10.0,
                                        shrinkWrap: true,
                                        children: List.generate(
                                          data[index].subCategories!.length,
                                          (index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              Tv(id:'',)));
                                                },
                                                child: CircleAvatar(
                                                  radius: 40.r,
                                                  backgroundColor:
                                                      Color(0x35FFC012),
                                                  backgroundImage: NetworkImage(
                                                    data[index].subCategories![0].image![0].url.toString(),
                                                      ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      )))
                            ],
                          ),
                        );
                      });
                } else {
                  return SizedBox();
                }
              })),
          SizedBox(
            height: 50.h,
          ),
        ])));
  }
}
