import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

TextEditingController Pincode = TextEditingController();
TextEditingController fullname = TextEditingController();
TextEditingController Phonenumber = TextEditingController();
TextEditingController state = TextEditingController();
TextEditingController City = TextEditingController();
TextEditingController Address = TextEditingController();
TextEditingController road = TextEditingController();
List<String> text = [
  "Home",
  "Work",
];
List<String> image = [
  "assets/36.png",
  "assets/37.png",
];
int current =0;

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.h,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  'Add delivery address',
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
              height: 60.h,
            ),
            Center(
              child: Container(
                width: 379.w,
                height: 63.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 35.w),
                  child: TextFormField(
                    controller: fullname,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Color(0xFF0F0F0F)),
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                width: 379.w,
                height: 63.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 20.w),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: Phonenumber,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Color(0xFF0F0F0F)),
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 28.h,
                ),
                Container(
                  width: 174.w,
                  height: 63.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFF1F1F1)),
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: SizedBox(
                      width: 140.w,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: Pincode,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(color: Color(0xFF0F0F0F)),
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Pincode',
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Container(
                  width: 174.w,
                  height: 63.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFF1F1F1)),
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: SizedBox(
                      width: 140.w,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: state,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(color: Color(0xFF0F0F0F)),
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'State',
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                width: 377.w,
                height: 63.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 20.w),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: City,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Color(0xFF0F0F0F)),
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: 'City',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        suffixIcon: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.search,
                              color: Color(0xff828282),
                            ))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                width: 377.w,
                height: 63.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 20.w),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: Address,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Color(0xFF0F0F0F)),
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'House No., Building Name.',
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                width: 377.w,
                height: 63.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 20.w),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: road,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Color(0xFF0F0F0F)),
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: 'Road name, Area, Colony.',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        suffixIcon: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.search,
                              color: Color(0xff828282),
                            ))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                'Type of address',
                style: TextStyle(
                  color: Color(0xFFB7B7B7),
                  fontSize: 12.sp,
                  fontFamily: 'hello',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 250.w,
                    height: 33.h,
                    child: ListView.separated(
                        separatorBuilder: (ctx, index) {
                          return Container(
                              width: 15.w,
                              child: Padding(
                                padding: EdgeInsets.only(right: 50.w),
                              ));
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(microseconds: 300),
                              width: 96.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: current == index
                                          ? Colors.blue
                                          : Color(0xffF1F1F1)),
                                  borderRadius: current == index
                                      ? BorderRadius.circular(44.r)
                                      : BorderRadius.circular(44.r)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.w),
                                    child: Image.asset(
                                      image[index],
                                      width: 18.w,
                                      height: 18.h,
                                      color: current == index
                                          ? Colors.blue
                                          : Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Text(
                                      text[index],
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                        color: current == index
                                            ? Colors.blue
                                            : Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Container(
                width: 379.w,
                height: 63.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFC113),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                ),
                child: Center(
                  child: Text(
                    'Save Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
