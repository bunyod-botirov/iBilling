import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';

class AppThemeDark {
  static final AppThemeDark _instance = AppThemeDark._init();
  static AppThemeDark get instance => _instance;
  AppThemeDark._init();

  final ThemeData darkTheme = ThemeData(
    fontFamily: 'Ubuntu',
    scaffoldBackgroundColor: ColorConst.instance.kBlack,
    primarySwatch: const MaterialColor(
      0xFF00A795,
      {
        50: Color.fromRGBO(0, 167, 149, .1),
        100: Color.fromRGBO(0, 167, 149, .2),
        200: Color.fromRGBO(0, 167, 149, .3),
        300: Color.fromRGBO(0, 167, 149, .4),
        400: Color.fromRGBO(0, 167, 149, .5),
        500: Color.fromRGBO(0, 167, 149, .6),
        600: Color.fromRGBO(0, 167, 149, .7),
        700: Color.fromRGBO(0, 167, 149, .8),
        800: Color.fromRGBO(0, 167, 149, .9),
        900: Color.fromRGBO(0, 167, 149, 1),
      },
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: ColorConst.instance.kWhite),
      actionsIconTheme: IconThemeData(color: ColorConst.instance.kWhite),
      titleTextStyle: FontStyleConst.instance.appBar,
      titleSpacing: 24.w,
      elevation: 0,
    ),
    
    // textTheme: TextTheme(),
  );
}
