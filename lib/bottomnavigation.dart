import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/account.dart';
import 'package:intership/category.dart';
import 'package:intership/homepage.dart';
import 'package:intership/order.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

int currentIndex = 0;
final screens = [
  Homepage(),
  Category(),
  Order(),
  Account(),
];

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xff000000),
        unselectedItemColor: const Color(0xff999595),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon:SizedBox(width: 24.w,height: 24.h,child: Image.asset("assets/18.png")),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SizedBox(width: 24.w,height: 24.h,child: Image.asset("assets/17.png")),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: SizedBox(width: 24.w,height: 24.h,child: Image.asset("assets/16.png")),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: SizedBox(width: 24.w,
                  height: 24.h,child: Image.asset("assets/profilecircle.png")),
              label: 'Account'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
