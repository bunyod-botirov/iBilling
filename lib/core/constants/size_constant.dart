import 'package:flutter/material.dart';
import 'package:ibilling/core/extensions/context_extension.dart';

class SizeConst {
  static double? _screenWidth;
  static double? _screenHeight;

  void init(BuildContext context) {
    _screenWidth = context.w;
    _screenHeight = context.h;
  }

  static double getWidth(double inputWidth) {
    return (inputWidth / 375.0) * SizeConst._screenWidth!;
  }

  static double getHeight(double inputHeight) {
    return (inputHeight / 815.0) * SizeConst._screenHeight!;
  }

  static horizontalBox(double size) =>
      SizedBox(width: SizeConst.getWidth(size));

  static verticalBox(double size) =>
      SizedBox(height: SizeConst.getHeight(size));
}
