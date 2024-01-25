

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    SizedBox(height: 70.h,),
    IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
  ],
),
    );
  }
}
