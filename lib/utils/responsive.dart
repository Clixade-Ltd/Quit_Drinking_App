import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsive {
  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 600;
  }

  static double navHeight() => 80.h;

  static double iconSize() => 22.r;

  static double labelFontSize() => 11.sp;

  static EdgeInsets screenPadding() =>
      EdgeInsets.symmetric(horizontal: 20.w);

  static double cardRadius() => 40.r;

  static int statGridCrossAxis() => 2;
}