import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/account.dart';

import '../BLOC/changepassword/changepassword_bloc.dart';
import '../Repository/ModelClass/ChangePassword.dart';

class ManageAccount extends StatefulWidget {
  final String Username;
  final String Phonenumber;
  final String Email;

  const ManageAccount({Key? key,
  required this.Username,
    required this.Phonenumber,
    required this.Email
  }) : super(key: key);

  @override
  State<ManageAccount> createState() => _ManageAccountState();
}

late ChangePassword data;
bool changePassword = false;
TextEditingController fullname = TextEditingController();
TextEditingController currentpassword = TextEditingController();
TextEditingController phonenumber = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController newpassword = TextEditingController();
TextEditingController confirmpassword = TextEditingController();

class _ManageAccountState extends State<ManageAccount> {
  void dispose() {
    currentpassword.clear();
    newpassword.clear();
    super.dispose();
  }
  @override
  void initState() {
    fullname.text =widget.Username;
    phonenumber.text=widget.Phonenumber;
    email.text=widget.Email;
    super.initState();
  }
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
    GestureDetector(
    onTap: () {
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
    child: GestureDetector(
    onTap: () {
    setState(() {
    changePassword = !changePassword;
    });
    },
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
    ),
    SizedBox(
    height: 30.h,
    ),
    Visibility(
    visible: changePassword,
    child: Column(
    children: [
    SizedBox(
    height: 27.h,
    ),
    SizedBox(
    width: 363.w,
    child: TextFormField(
    textInputAction: TextInputAction.next,
    style: TextStyle(color: Color(0xFF0F0F0F)),
    controller: currentpassword,
    autofocus: false,
    decoration: InputDecoration(
    hintText: 'Current Password',
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(color: Color(0xFFEEEEEE))),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(color: Color(0xFFEEEEEE))),
    ),
    ),
    ),
    SizedBox(
    height: 25.h,
    ),
    SizedBox(
    width: 363.w,
    child: TextFormField(
    textInputAction: TextInputAction.next,
    style: TextStyle(color: Color(0xFF0F0F0F)),
    controller: newpassword,
    autofocus: false,
    decoration: InputDecoration(
    hintText: 'New Password',
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(color: Color(0xFFEEEEEE))),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide:
    BorderSide(color: Color(0xFFEEEEEE)))),
    ),
    ),
    SizedBox(
    height: 25.h,
    ),
    // SizedBox(
    // width: 363.w,
    // child: TextFormField(
    // textInputAction: TextInputAction.next,
    // style: TextStyle(color: Color(0xFF0F0F0F)),
    // controller: confirmpassword,
    // autofocus: false,
    // decoration: InputDecoration(
    // hintText: 'Confirm Password',
    // focusedBorder: OutlineInputBorder(
    // borderRadius: BorderRadius.circular(10.r),
    // borderSide: BorderSide(color: Color(0xFFEEEEEE))),
    // border: OutlineInputBorder(
    // borderRadius: BorderRadius.circular(10.r),
    // borderSide:
    // BorderSide(color: Color(0xFFEEEEEE)))),
    // ),
    // ),
    ],
    ),
    ),
    SizedBox(
    height: 80.h,
    ),
    Center(
    child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
    listener: (context, state) {
    if (state is ChangePasswordLoading) {
    showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
    return Center(
    child: CircularProgressIndicator(),
    );
    });
    }
    if (state is ChangePasswordError) {
    Text('error');
    Navigator.of(context).pop();
    }
    if (state is ChangePasswordLoaded) {
    Navigator.of(context).pop();
    Navigator.of(context).push(MaterialPageRoute(
    builder: (_) => Account
    ()));
    }},
    child: GestureDetector(
    onTap: () {
      BlocProvider.of<ChangePasswordBloc>(context).add(
          FetchChangePassword(
            oldPass: currentpassword.text,
            newPass: newpassword.text,

          ));
    },
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
      )
    ),
    SizedBox(
    height: 50.h,
    ),
    ],

    ),
    ),
    );
    }
    }
