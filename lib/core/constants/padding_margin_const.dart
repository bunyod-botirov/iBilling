import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/size_constant.dart';

class PaddingMarginConst {
  static EdgeInsets symmetricHorizontalPM = EdgeInsets.symmetric(
    horizontal: SizeConst.getWidth(16),
  );

  static EdgeInsets symmetricVerticalPM = EdgeInsets.symmetric(
    vertical: SizeConst.getHeight(16),
  );

  static EdgeInsets allPM = EdgeInsets.all(SizeConst.getWidth(16));
}
