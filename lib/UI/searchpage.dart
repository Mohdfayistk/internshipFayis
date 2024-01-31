import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

TextEditingController search = TextEditingController();

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 75.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 330.w,
                  height: 49.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF3F3F3),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFE7E7E7)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: Color(0xff828282),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 255.w,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          controller: search,
                          cursorColor: Color(0xFFA4A4A4),
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.close,
                                  color: Color(0xFFA4A4A4),
                                  size: 22.sp,
                                ),
                                onPressed: () {
                                  search.clear();
                                },
                              ),
                              hintText: 'search',
                              hintStyle: TextStyle(
                                color: Color(0xFFA4A4A4),
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 740.h,
              child: ListView.separated(
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
                  itemCount: 5,
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
                                child: Image.asset("assets/TV2.png"))),
                        SizedBox(
                          width: 50.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Television 32’’ Smart TV',
                                  style: TextStyle(
                                    color: Color(0xFF1D1D1B),
                                    fontSize: 14.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Icon(Icons.favorite_border_outlined),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Image.asset("assets/star.png"),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              '₹ 50,000',
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
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
