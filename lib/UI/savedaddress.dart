import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intership/UI/addaddress.dart';

class SavedAddress extends StatefulWidget {
  const SavedAddress({Key? key}) : super(key: key);

  @override
  State<SavedAddress> createState() => _SavedAddressState();
}

String gender = "male";

class _SavedAddressState extends State<SavedAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 15.w,
              ),
              Text(
                'Select Delivery Address',
                textAlign: TextAlign.center,
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
            height: 40.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AddAddress()));
            },
            child: Container(
              width: 430.w,
              height: 79.h,
              decoration: BoxDecoration(color: Color(0xFFFCFCFC)),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Icon(Icons.add),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      'Add a new address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'hello',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              '2 Saved Addresses',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontFamily: 'hello',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 600.h,
            child: ListView.separated(
                separatorBuilder: (ctx, index) {
                  return Container(
                    height: 15.h,
                  );
                },
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 430.w,
                    height: 126.h,
                    decoration: BoxDecoration(color: Color(0xFFFCFCFC)),
                    child: RadioListTile(
                      hoverColor: Color(0xff264050),
                      activeColor: Color(0xff264050),
                      title: SizedBox(
                          width: 295.w,
                          height: 80.h,
                          child: Text(
                              "Jalan Haji Juanda No 1Paledang Kecamatan Bogor Tengah Kota Bogor Jawa Barat'")),
                      value: "Cash on Delivery'",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
