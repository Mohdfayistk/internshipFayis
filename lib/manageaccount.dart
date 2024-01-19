import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageAccount extends StatefulWidget {
  const ManageAccount({Key? key}) : super(key: key);

  @override
  State<ManageAccount> createState() => _ManageAccountState();
}

TextEditingController fullname = TextEditingController();
TextEditingController currentpassword = TextEditingController();
TextEditingController phonenumber = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController newpassword = TextEditingController();
TextEditingController confirmpassword = TextEditingController();

class _ManageAccountState extends State<ManageAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 65.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                GestureDetector(onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(
                    Icons.arrow_back,
                    size: 24.sp,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  'Manage Your Account',
                  style: TextStyle(
                    color: Color(0xFF463507),
                    fontSize: 20.sp,
                    fontFamily: 'hello',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 46.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: SizedBox(
                    width: 150.w,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Color(0xFF0F0F0F)),
                      controller: phonenumber,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'PhoneNumber',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: SizedBox(
                    width: 150.w,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Color(0xFF0F0F0F)),
                      controller: fullname,
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
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: SizedBox(
                    width: 150.w,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Color(0xFF0F0F0F)),
                      controller: email,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 44.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'CHANGE PASSWORD',
                    style: TextStyle(
                      color: Color(0xFF463507),
                      fontSize: 15.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: SizedBox(
                    width: 150.w,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Color(0xFF0F0F0F)),
                      controller: currentpassword,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Current Password',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: SizedBox(
                    width: 150.w,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Color(0xFF0F0F0F)),
                      controller: newpassword,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 70.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: SizedBox(
                    width: 150.w,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Color(0xFF0F0F0F)),
                      controller: confirmpassword,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: Container(
                width: 363.w,
                height: 44.h,
                decoration: BoxDecoration(color: Color(0xFFFFC113)),
                child: Center(
                  child: Text(
                    'SAVE DETAILS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontFamily: 'hello',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
