import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/bottomnavigation.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../BLOC/Signup/signup_bloc.dart';
import '../Repository/ModelClass/SignUp.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

late SignUp data;
TextEditingController email = TextEditingController();
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
bool passwordVisible = true;

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff264050),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Padding(
                padding: EdgeInsets.only(left: 350.w, top: 180.h),
                child:
                    SizedBox(width: 182.w, child: Image.asset("assets/8.png")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 250.h, right: 365.w),
                child:
                    SizedBox(width: 182.w, child: Image.asset("assets/5.png")),
              ),
              Padding(
                padding: EdgeInsets.only(right: 215.w, bottom: 150.h),
                child:
                    SizedBox(width: 291.w, child: Image.asset("assets/6.png")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 282.h),
                child: Container(
                  width: 430.w,
                  height: 650.h,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(67.r),
                            topRight: Radius.circular(67.r)),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 120.h,
                      ),
                      Center(
                        child: Container(
                          width: 363.w,
                          height: 66.h,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF1F1F1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 17.w,
                              ),
                              Icon(
                                Icons.email_outlined,
                                color: Color(0xff767676),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              SizedBox(
                                width: 150.w,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(color: Color(0xff767676)),
                                  controller: email,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Center(
                        child: Container(
                            width: 363.w,
                            height: 66.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF1F1F1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 17.w),
                                  child: Icon(
                                    Icons.perm_identity,
                                    color: Color(0xff767676),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 150.w,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    style: TextStyle(color: Color(0xff767676)),
                                    controller: username,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      hintText: 'User name',
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Center(
                        child: Container(
                            width: 363.w,
                            height: 66.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF1F1F1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 17.w,
                                ),
                                SizedBox(
                                    width: 24.w,
                                    height: 24.h,
                                    child: Image.asset("assets/7.png")),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 300.w,
                                  child: TextFormField(
                                    obscureText: passwordVisible,
                                    style: TextStyle(color: Color(0xff767676)),
                                    controller: password,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(passwordVisible
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        onPressed: () {
                                          setState(
                                            () {
                                              passwordVisible =
                                                  !passwordVisible;
                                            },
                                          );
                                        },
                                      ),
                                      hintText: 'Passsword',
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 58.h,
                      ),
                      Center(
                        child: BlocListener<SignupBloc, SignupState>(
                          listener: (context, state) {
                            if (state is SignupBlocLoading) {
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
                            if (state is SignupBlocError) {
                              Text('error');
                              Navigator.of(context).pop();
                            }
                            if (state is SignupBlocLoaded) {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => BottomNavigation()));
                            }
                            // TODO: implement listener
                          },
                          child: GestureDetector(
                            onTap: () {
                              BlocProvider.of<SignupBloc>(context).add(
                                  FetchSignup(
                                      username: username.text,
                                      password: password.text,
                                      email: email.text));
                            },
                            child: Container(
                              width: 363.w,
                              height: 62.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFF264050),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Signup',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                    fontFamily: 'hello',
                                    fontWeight: FontWeight.w500,
                                    height: 0.04,
                                    letterSpacing: -0.30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                  color: Color(0xFF264050),
                                  fontSize: 15.sp,
                                  fontFamily: 'hello',
                                  fontWeight: FontWeight.w400,
                                  height: 0.08,
                                  letterSpacing: -0.30,
                                ),
                              ),
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  color: Color(0xFF264050),
                                  fontSize: 16.sp,
                                  fontFamily: 'hello',
                                  fontWeight: FontWeight.w700,
                                  height: 0.08,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 165.w, top: 55.h),
                child: SizedBox(
                    width: 100.w,
                    height: 86.h,
                    child: Image.asset("assets/1.png")),
              ),
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 178.h),
                child: Text(
                  'Let’s Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontFamily: 'hello',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
