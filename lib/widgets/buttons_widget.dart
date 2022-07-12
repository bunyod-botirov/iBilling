import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';

class ButtonsW {
  static SizedBox green(
      String text, double width, double height, Function callBack) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorConst.instance.kDarkGreen.withOpacity(0.23),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorConst.instance.kDarkGreen,
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
          primary: ColorConst.instance.kDarkGreen,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorConst.instance.kWhite,
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
          primary: ColorConst.instance.kRed.withOpacity(0.23),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorConst.instance.kRed,
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
          primary: ColorConst.instance.kRed,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorConst.instance.kWhite,
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
