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
              icon: Icon(
                Icons.home_outlined,
                size: 25.sp,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.manage_search,
                size: 25.sp,
              ),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 25.sp,
              ),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 25.sp,
              ),
              label: 'Account'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
