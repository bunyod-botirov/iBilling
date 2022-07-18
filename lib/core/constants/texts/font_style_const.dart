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

  // ? Headline
  final TextStyle headline1 = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w700,
  );

  final TextStyle headline2 = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fMedium,
    fontWeight: FontWeight.w700,
  );

  final TextStyle headline4 = TextStyle(
    color: ColorConst.instance.kDarkGrey,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w700,
  );

  final TextStyle headline5 = TextStyle(
    color: ColorConst.instance.kDarkGrey,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w500,
  );

  // ? buttonText
  final TextStyle buttonText1 = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fMedium,
    fontWeight: FontWeight.w500,
  );

  // ? Title
  final TextStyle title1 = TextStyle(
    color: ColorConst.instance.kWhite,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w500,
  );

  final TextStyle title2 = TextStyle(
    color: ColorConst.instance.kLightGrey,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w500,
  );

  // ? Body
  final TextStyle body1 = TextStyle(
    color: ColorConst.instance.kDarkGrey,
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w400,
  );

  // ? Custom
  final TextStyle newContracts = TextStyle(
    color: ColorConst.instance.kWhite.withOpacity(0.4),
    fontSize: SizeConst.instance.fRegular,
    fontWeight: FontWeight.w400,
  );
}
