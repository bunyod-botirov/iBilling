import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';

class DecorationContainer {
  static final DecorationContainer _instance = DecorationContainer._init();
  static DecorationContainer get instance => _instance;
  DecorationContainer._init();

  final BoxDecoration container = BoxDecoration(
    color: ColorConst.instance.kDark,
    borderRadius: BorderRadius.circular(6.r),
  );
}
