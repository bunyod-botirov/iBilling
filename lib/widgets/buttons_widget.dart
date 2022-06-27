import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/colors/colors_constant.dart';

class ButtonsW {
  static SizedBox green(
      String text, double width, double height, Function callBack) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorsConst.darkGreen.withOpacity(0.23),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorsConst.darkGreen,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {
          callBack();
        },
      ),
    );
  }

  static SizedBox greenWithWhiteText(
      String text, double width, double height, Function callBack) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorsConst.darkGreen,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorsConst.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {
          callBack();
        },
      ),
    );
  }

  static SizedBox red(
      String text, double width, double height, Function callBack) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorsConst.red.withOpacity(0.23),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorsConst.red,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {
          callBack();
        },
      ),
    );
  }

  static SizedBox redWithWhiteText(
      String text, double width, double height, Function callBack) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorsConst.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorsConst.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {
          callBack();
        },
      ),
    );
  }
}
