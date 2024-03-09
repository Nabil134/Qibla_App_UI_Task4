import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/screens/home/home_screen.dart';
import 'package:task4/screens/splash/splash_screen.dart';
import 'package:task4/constant/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Qibla App',

          theme: ProjectTheme.themeData,
          home: SplashScreen(child: HomeScreen(),),
        );
      },

    );
  }
}

