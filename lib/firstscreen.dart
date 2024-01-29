import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/loginscreen.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => Loginscreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 330.h,
          ),
          Center(
            child: Container(
              width: 174.w,
              height: 175.h,
              decoration: ShapeDecoration(
                color: Color(0xFF264050),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(51),
                ),
              ),
              child: Image.asset("assets/1.png"),
            ),
          )
        ],
      ),
    );
  }
}
