import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/account.dart';
import 'package:intership/UI/category.dart';
import 'package:intership/UI/homepage.dart';
import 'package:intership/UI/order.dart';

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
              icon: SizedBox(
                  width: 24.w, height: 24.h, child: Icon(Icons.home_outlined)),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: Icon(Icons.category_outlined)),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: 24.w, height: 24.h, child: Icon(Icons.shop_outlined)),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: Icon(Icons.account_circle_outlined)),
              label: 'Account'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
