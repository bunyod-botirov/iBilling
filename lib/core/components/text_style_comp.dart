import 'package:flutter/painting.dart';
import 'package:ibilling/core/constants/colors/colors_constant.dart';

class TextStyleComp {
  static TextStyle regularStyle(double size) {
    return TextStyle(
      color: ColorsConst.white,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle mediumStyle(double size) {
    return TextStyle(
      color: ColorsConst.white,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle boldStyle(double size) {
    return TextStyle(
      color: ColorsConst.white,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle regularStyleGrey(double size) {
    return TextStyle(
      color: ColorsConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle mediumStyleGrey(double size) {
    return TextStyle(
      color: ColorsConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle boldStyleGrey(double size) {
    return TextStyle(
      color: ColorsConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }
}
