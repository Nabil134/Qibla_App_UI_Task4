import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/components/drawer.dart';
import 'package:task4/constant/colors.dart';
import 'package:task4/constant/images.dart';
import 'package:task4/constant/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: drawer(context),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        iconTheme:ProjectTheme.themeData.iconTheme,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(kaabaimage,
          height: 94.h,
            width: 90.w,
          ),
          Image.asset(dirctionimage,
            height: 296.h,
            width: 300.w,
          ),
        ],),
      ),
    );
  }
}
