import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';

class FontStyleConst {
  static final FontStyleConst _instance = FontStyleConst._init();
  static FontStyleConst get instance => _instance;
  FontStyleConst._init();

  final TextStyle appBar = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fLarge,
    fontWeight: FontWeight.w500,
  );

  final TextStyle bottomBarAble = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fExtraSmall,
    fontWeight: FontWeight.w700,
  );

  final TextStyle bottomBarDisable = TextStyle(
    color: ColorConst.instance.kDarkGrey,
    fontSize: SizeConst.instance.fExtraSmall,
    fontWeight: FontWeight.w500,
  );

  final TextStyle statusGreen = TextStyle(
    color: ColorConst.instance.kStatusGreen,
    fontSize: SizeConst.instance.fSmall,
    fontWeight: FontWeight.w500,
  );

  final TextStyle statusYellow = TextStyle(
    color: ColorConst.instance.kStatusYellow,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w500,
  );
  final TextStyle statusRed1 = TextStyle(
    color: ColorConst.instance.kRed,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w500,
  );

  final TextStyle statusRed2 = TextStyle(
    color: ColorConst.instance.kStatusRed,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w500,
  );

  final TextStyle headline1 = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w700,
  );

  final TextStyle headline2 = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w500,
  );

  final TextStyle headline3 = TextStyle(
    color: ColorConst.instance.kDarkGrey,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w400,
  );

  final TextStyle headline4 = TextStyle(
    color: ColorConst.instance.kDarkGrey,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w700,
  );

  final TextStyle buttonText = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );

  TextStyle regularStyle(double size) {
    return TextStyle(
      color: ColorConst.instance.kWhite,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle mediumStyle(double size) {
    return TextStyle(
      color: ColorConst.instance.kWhite,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle boldStyle(double size) {
    return TextStyle(
      color: ColorConst.instance.kWhite,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle regularStyleGrey(double size) {
    return TextStyle(
      color: ColorConst.instance.kDarkGrey,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle mediumStyleGrey(double size) {
    return TextStyle(
      color: ColorConst.instance.kDarkGrey,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle boldStyleGrey(double size) {
    return TextStyle(
      color: ColorConst.instance.kDarkGrey,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }
}
