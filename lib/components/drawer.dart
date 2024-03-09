import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/constant/theme.dart';

import '../constant/colors.dart';

Widget drawer(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Drawer(
    child: Container(
      height: 844.h,
      width: 243.w,
      color:  kTertiaryColor,
      padding: EdgeInsets.all(20),

      child: ListView(children: [
         SizedBox(height: 100.h),
        reuseablewidget(icon: Icons.home,txt: "Home",),
         SizedBox(height: 20.h,),
        reuseablewidget(icon: Icons.location_pin,txt: "Location",),
        SizedBox(height: 20.h,),
        reuseablewidget(icon: Icons.settings,txt: "Settings",),


      ],),
    ),
  );
}
/*reuseablewidget start here*/
class reuseablewidget extends StatelessWidget {
  final IconData icon;
  final String txt;
  const reuseablewidget({super.key,required this.icon,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon,
        size: 40.h,
      ),
      SizedBox(width: 10,),
      Text(txt,style: TextStyle(
        color: kIconColor,
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
      ),),
    ],);
  }
}

/*reuseablewidget end here*/