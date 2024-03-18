import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/manageaccount.dart';
import 'package:intership/UI/savedaddress.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../BLOC/addaddress/addaddress_bloc.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

TextEditingController address = TextEditingController();
TextEditingController pincode = TextEditingController();
TextEditingController fullname = TextEditingController();
TextEditingController phonenumber = TextEditingController();
TextEditingController state = TextEditingController();
TextEditingController city = TextEditingController();
TextEditingController housenumber = TextEditingController();
TextEditingController road = TextEditingController();
List<String> text = [
  "Home",
  "Office",
];
List<String> image = [
  "assets/36.png",
  "assets/37.png",
];
int current = 0;
String addresstype = '';

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
                    controller: phonenumber,
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
                        controller: pincode,
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
                    controller: city,
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
                    controller: address,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Color(0xFF0F0F0F)),
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Address',
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
                    controller: housenumber,
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
                                addresstype = text[index];
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
              child: BlocListener<AddaddressBloc, AddaddressState>(
                listener: (context, state) {
                  if (state is AddaddressBlocLoading) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Container(
                            width: 60.w,
                            height: 60.h,
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
                  if (state is AddaddressBlocError) {
                    Text('error');
                    Navigator.of(context).pop();
                  }
                  if (state is AddaddressBlocLoaded) {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  }
                  // TODO: implement listener
                },
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<AddaddressBloc>(context)
                        .add(FetchAddaddress(
                      fullname: fullname.text,
                      phonenumber: phonenumber.text,
                      pincode: int.parse(pincode.text),
                      state: state.text,
                      city: city.text,
                      address: address.text,
                      housenumber: housenumber.text,
                      road: road.text,
                      addresstype: addresstype,
                    ));
                  },
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
