import 'package:flutter/material.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors_constant.dart';

class ThemeComp {
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Ubuntu',
    scaffoldBackgroundColor: ColorsConst.black,
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
      backgroundColor: ColorsConst.darkest,
      iconTheme: IconThemeData(color: ColorsConst.white),
      actionsIconTheme: IconThemeData(color: ColorsConst.white),
      titleTextStyle: TextStyleComp.mediumStyle(18),
      titleSpacing: 0,
      elevation: 0,
    ),
  );
}
