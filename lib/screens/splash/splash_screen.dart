import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/constant/colors.dart';
import 'package:task4/constant/images.dart';
class SplashScreen extends StatefulWidget {
  final Widget child;
  const SplashScreen({super.key,required this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Future.delayed(const Duration(milliseconds: 3000)).then((value){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child), (route) => false);
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      body:Center(child: Image.asset(splashscreen,
        height: 584.h,
        width: 578.w,
      ),),
    );
  }
}
